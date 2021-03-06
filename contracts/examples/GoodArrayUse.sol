import '../PullPaymentCapable.sol';

contract GoodArrayUse is PullPaymentCapable {
  address[] employees;
  mapping(address => uint) bonuses;

  function payBonus() {
    for (uint i = 0; i < employees.length; i++) {
			address employee = employees[i];
			uint bonus = bonuses[employee];
    	asyncSend(employee, bonus);
    }
  }

	function calculateBonus(address employee) returns (uint) {
    uint bonus = 0;
    // some expensive computation...
    bonuses[employee] = bonus;
  }

}
