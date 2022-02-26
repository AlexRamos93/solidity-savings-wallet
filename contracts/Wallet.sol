//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface ILendingPool {
    function deposit(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    ) external;

    function withdraw(
        address asset,
        uint256 amount,
        address to
    ) external returns (uint256);
}

contract Wallet is Ownable {
    ILendingPool public constant aave =
        ILendingPool(0xE0fBa4Fc209b4948668006B2bE61711b7f465bAe);
    IERC20 public constant dai =
        IERC20(0xFf795577d9AC8bD7D90Ee22b6C1703490b6512FD);
    IERC20 public constant aDai =
        IERC20(0xdCf0aF9e59C002FA3AA091a46196b37530FD48a8);

    function deposit(uint256 _amount) external {
        dai.transferFrom(msg.sender, address(this), _amount);
        _deposit(_amount);
    }

    function transfer(address _to, uint256 _amount) external onlyOwner {
        aave.withdraw(address(dai), _amount, address(this));
        dai.transfer(_to, _amount);
    }

    function balance() external view returns (uint256) {
        return aDai.balanceOf(address(this));
    }

    function _deposit(uint256 _amount) internal {
        dai.approve(address(aave), _amount);
        aave.deposit(address(dai), _amount, address(this), 0);
    }
}
