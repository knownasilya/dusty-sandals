'use strict';

var exec = require('child_process').exec;
var RSVP = require('rsvp');
var execOptions = { cwd: process.cwd() };
var branch = 'gh-pages';

function checkoutGhPages() {
  return runCommand('git checkout ' + branch, execOptions);
}

function copy() {
  return runCommand('cp -R "Dusty Sandals.materials/Release/*" .', execOptions);
}

function addAndCommit() {
  return runCommand('git add . && git commit -m "build"', execOptions)
}

function returnToPreviousCheckout() {
  // Each '\' needed to be escaped here
  return runCommand("git checkout `git reflog HEAD | sed -n " +
    "'/checkout/ !d; s/.* \\(\\S*\\)$/\\1/;p' | sed '2 !d'`", execOptions);
}

checkoutGhPages()
  .then(copy)
  .then(addAndCommit)
  .then(returnToPreviousCheckout)
  .then(function() {
    console.log('Done. All that\'s left is to git push the ' + branch +
      ' branch.\nEx: git push origin ' + branch + '\n');
  })
  .catch(function (error) {
    console.error(error);
  });

function runCommand(/* child_process.exec args */) {
  var args = Array.prototype.slice.call(arguments);

  var lastIndex = args.length - 1;
  var lastArg   = args[lastIndex];
  var logOutput = false;
  if (typeof lastArg === 'boolean') {
    logOutput = lastArg;
    args.splice(lastIndex);
  }

  return new RSVP.Promise(function(resolve, reject) {
    var cb = function(err, stdout, stderr) {
      if (logOutput) {
        if (stderr) {
          console.log(stderr);
        }

        if (stdout) {
          console.log(stdout);
        }
      }

      if (err) {
        return reject(err);
      }

      return resolve();
    };

    args.push(cb);
    exec.apply(exec, args);
  }.bind(this));
}
