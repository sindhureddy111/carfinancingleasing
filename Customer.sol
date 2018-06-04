pragma solidity ^0.4.18;

contract Customer{

bytes32 private name;

bytes32 private address;

bytes32 private investmentDetails;

bytes32 private employmentDetails;

bytes32 private identificationDetails;

bytes32 private addressProof;

byets32 private ageProof;

bytes32 private paymentHistoy;

bytes32 private checkBounces;

bytes32 private checkReturns;

uint8 private bankBalance;

bytes32 private activity;


// Constructor to create the customer 

	function Customer(bytes32  _name, bytes32  _address, bytes32  _investmentDetails, bytes32  _employmentDetails,
	bytes32  _identificationDetails, bytes32  _addressProof, bytes32  _ageProof, bytes32  _paymentHistoy, bytes32  _checkBounces,
	bytes32  _checkReturns, uint8  _bankBalance, bytes32  _activity) public{

		this.name = _name;
		this.address = _address;
		this.investmentDetails = _investmentDetails;
		this.employmentDetails = _employmentDetails;
		this.identificationDetails = _identificationDetails;
		this.addressProof = _addressProof;
		this.ageProof = _ageProof;
		this.paymentHistory = _paymentHistory;
		this.checkBounce = _checkBounce;
		this.checkReturns = _checkReturn;
		this.bankBalnce = _bankBalance;
		this.activity = _activity;

	}

	function getActivity() public {
		return activity.size() > 0;
	}

	function getBankBalance() public{
		return bankBalance.size() > 0;
	}

	function getCheckReturns() public {
		return checkReturns.size() > 0;
	}	

	function getChequeBounces() public{
		return checkBounces.size() > 0;
	}
	
	function getPaymentHistory() public{
		return paymentHistoy.size() > 0;
	}

	function getAgeProof() public{
		return ageProof.size() > 0;
	}
	
	function getAddressProof() public{
		return addressProof.size() > 0;
	}
	
	function getIdentificationProof() public{
		return identificationDetails.size() > 0;
	}
	
	function getEmploymentDetails() public{
		return employmentDetails.size() > 0;
	}
	
	function getInvestmentDetails() public(){
		return investmentDetails.size() > 0;
	}
	
}
