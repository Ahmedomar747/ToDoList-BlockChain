pragma solidity ^0.5.0;


contract ToDoList {
    uint public TaskCount = 0;
    struct Task{
        uint id;
        string title;
        string content;
        bool isCompleted;
    }
    mapping(uint => Task) public Tasks;

    constructor() public {
        createTask("WorkOut","Full body workout from 6PM to 8 PM.");
    }

    function createTask(string memory _title, string memory _content) public {
        TaskCount ++;
        Tasks[TaskCount] = Task(TaskCount, _title, _content, false);
    }
}