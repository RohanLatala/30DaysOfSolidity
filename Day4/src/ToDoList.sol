//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract ToDoList {

   struct ToDo {
    string text;
    bool completed;
   }


   ToDo[] public todos;

   function CreateTasks(string calldata _text) external {

       todos.push(ToDo({
        text: _text,
        completed: false

       }));
   }



   function UpdateTask(uint _index, string calldata _text)  external {

    todos[_index].text = _text;

    ToDo storage todo = todos[_index]; 

    todo.text = _text;
   }


   function GetTasks(uint _index) external view  returns (string memory, bool){
    ToDo memory todo = todos[_index];

    return(todo.text, todo.completed);

   }


   function togglecompleted(uint _index) external {

    todos[_index].completed = !todos[_index].completed;
   }


       


}