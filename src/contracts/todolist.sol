pragma solidity ^0.5.0;


contract todolist{
	uint public taskCount=0;

	struct Task {
    uint id;
    string content;
    bool completed;
  }

  	event TaskEvent(
  		uint id,
  		string content,
  		bool completed
  	);

	mapping(uint=>Task) public tasks;

	constructor() public{
		createTask("Finish work");
	}

	function createTask(string memory _content) public{
		taskCount++;
		tasks[taskCount]=Task(taskCount, _content, false);
		emit TaskEvent(taskCount, _content, false);
	} 


}