const todoList = artifacts.require("todolist");

module.exports = function(deployer) {
  deployer.deploy(todoList);
};
