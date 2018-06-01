pragma solidity ^0.4.18;

contract FinanceBank{

// Trust Amount - Loand that are given out cannot exceed this amoung and every load is deducted from this
uint8 private trustAmount;


//Hold list of customers
address[] public customers
mapping(address => customer) public addressToCustomer;
mapping(address => uint8) public loanAmountSanctioned;

//There should be only one owner who can perform fiduciary duties
address private owner;

function FinanceBank(uint8 _trustAmount) public{
owner = msg.owner;
trustAmount = _trustAmount;

}


function createAccountForCustomerifNew(address _customerAddress, Customer customer, uint8 _requestedLoanAmount) public returns uint8{
require(owners == msg.sender);
if(loadAmountSantioned[_customerAddress] > 0){
return loanAmountSantioned[_customerAddress]
}else{

// Which means this guy is a new customer and will need a new account to be created
// ALso a new set of validations need to be performed on this customers data to dermine 
// the integrity of the forms and validations that are send by this customer for now i am 
// assuming the customer class that is being supplied to this method as an argument will hold 
// all the data that is necessary for the bank to perform the necessary validations and decide
// to provide the loan or not.

require(customer.getActivity)
require(customer.getBankBalance)
require(customer.getCheckReturns)
require(customer.getChequeBounces)
require(customer.getPaymentHistory)
require(customer.getAgeProof)
require(customer.getAddressProof)
require(customer.getIdentificationProof)
require(customer.getEmploymentDetails)
require(customer.getInvestmentDetails)

// When everything is good we can provide a loan making sure that the loan amount is not greater than 
// 5 times of his salary

require(_requestedLoanAmount < 5*customer.getSalary)

trustAmount = trustAmount - _requestedLoanAmount;

// Create map for address to customer object and address to sanctioned loan amount 
// the below two maps together hold all the details regarding loan application to the santioned loan amount

addressToCustomer[_customerAddress] = customer;

loanAmountSantioned[_customerAddress] = _requestedLoanAmount;

return loanAmountSantioned[_customerAddress];

}



}


	
}
