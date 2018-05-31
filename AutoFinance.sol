pragma solidity ^0.4.18;

contract FinanceBank{

  //For list of documents required by bank
  //1. Add the customer
  //2.Check if all the documents are submitted by the customer for verfication
  //3.Make all documents required(fil the form)
  //4.After submission & verification, route from bank to the product company

  //Initialize variables  

  bytes32[] public owner;
  bytes32[] public customerNames; 

  bool public documentNames;

  uint amount;

  //Start
  //1.Add the customer to the system and verify if the customer already exists
    function createIfNotExist(bytes32 _customerName) public{
	
	bool customerExist = false;
	unit i = 0;
	for(i=0; i <customerNames.length; i++){
	  if(customerNames[i] == customerName){
		customerExist = true;
		break;
	   }
	}	
	
	if(customerExist  == false){
	   customerNames[i+1] = _customerName;
	}

      }

   //2. Check if all the documents are uploaded
    function checkForDocument(bool _documentName) view  public returns(bool) {
      for(uint i =0; i<documentNames.length; i++){
	 if(documentNames[i] == _documentName)
		return true;
	}
	return false;
      
    }
	
}
