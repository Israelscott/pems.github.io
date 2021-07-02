-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 02:14 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccounts`
--

CREATE TABLE `tblaccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccounts`
--

INSERT INTO `tblaccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(1, 'Joken Villanueva', 'joken@yahoo.com', '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06', 'Administrator'),
(2, 'tester', 'test@yahoo.com', '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06', 'Employee'),
(4, 'HATCH ENTIERRO VILLANUEVA', 'hatch@yahoo.com', '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tblcommonmaster`
--

CREATE TABLE `tblcommonmaster` (
  `COMMON_ID` int(11) NOT NULL,
  `COMMONCODE` varchar(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL,
  `LISTNAME` varchar(30) NOT NULL,
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcommonmaster`
--

INSERT INTO `tblcommonmaster` (`COMMON_ID`, `COMMONCODE`, `CATEGORY`, `LISTNAME`, `IS_DEFAULT`) VALUES
(1, 'ExpensesBID DOCS', 'Expenses', 'BID DOCS', 'YES'),
(2, 'ExpensesBID PREP', 'Expenses', 'BID PREP', 'YES'),
(3, 'ExpensesAREGLO', 'Expenses', 'AREGLO', 'YES'),
(4, 'ExpensesCOSH', 'Expenses', 'COSH', 'YES'),
(5, 'ExpensesPERFORMANCE BOND', 'Expenses', 'PERFORMANCE BOND', 'YES'),
(6, 'ExpensesCARI', 'Expenses', 'CARI', 'YES'),
(7, 'ExpensesSURETY BOND (MOBILIZAT', 'Expenses', 'SURETY BOND (MOBILIZATION)', 'YES'),
(8, 'ExpensesCONTRACT NOTARY', 'Expenses', 'CONTRACT NOTARY', 'YES'),
(9, 'ExpensesPERT CPM', 'Expenses', 'PERT CPM', 'YES'),
(10, 'ExpensesVOUCHER PRINTING', 'Expenses', 'VOUCHER PRINTING', 'YES'),
(11, 'ExpensesCONTRACTORS AFFIDAVIT', 'Expenses', 'CONTRACTORS AFFIDAVIT', 'YES'),
(12, 'ExpensesMQC OT', 'Expenses', 'MQC OT', 'YES'),
(13, 'ExpensesPICTURES', 'Expenses', 'PICTURES', 'YES'),
(14, 'ExpensesQCP', 'Expenses', 'QCP', 'YES'),
(15, 'ExpensesMATERIALS TESTING', 'Expenses', 'MATERIALS TESTING', 'YES'),
(16, 'ExpensesMATERIALS ENGINEER', 'Expenses', 'MATERIALS ENGINEER', 'YES'),
(17, 'Expenses0217', 'Expenses', '0217', 'YES'),
(18, 'ExpensesBACK UP COMPUTATION', 'Expenses', 'BACK UP COMPUTATION', 'YES'),
(19, 'ExpensesAS BUILT PLAN', 'Expenses', 'AS BUILT PLAN', 'YES'),
(20, 'ExpensesPROJECT ENGINEER', 'Expenses', 'PROJECT ENGINEER', 'YES'),
(21, 'ExpensesSURETY BOND RETENTION', 'Expenses', 'SURETY BOND RETENTION', 'YES'),
(22, 'ExpensesSOP', 'Expenses', 'SOP', 'YES'),
(23, 'ExpensesMATERIALS', 'Expenses', 'MATERIALS', 'YES'),
(24, 'ExpensesCEMENT', 'Expenses', 'CEMENT', 'YES'),
(25, 'ExpensesAGGREGATES', 'Expenses', 'AGGREGATES', 'YES'),
(26, 'ExpensesFUEL', 'Expenses', 'FUEL', 'YES'),
(27, 'ExpensesROYALTY', 'Expenses', 'ROYALTY', 'YES'),
(28, 'ExpensesVAT', 'Expenses', 'VAT', 'YES'),
(29, 'ExpensesTARP', 'Expenses', 'TARP', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `EXPID` int(11) NOT NULL,
  `PROJECTID` int(11) NOT NULL,
  `EXPTYPE` varchar(30) NOT NULL,
  `EXPITEM` varchar(50) NOT NULL,
  `SUPPLIER` varchar(50) NOT NULL,
  `DATEGIVEN` date NOT NULL,
  `DATEADDED` date NOT NULL,
  `EXPENSES` decimal(12,2) NOT NULL,
  `REQUESTEDBY` varchar(30) NOT NULL,
  `ENCODER` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpenses`
--

INSERT INTO `tblexpenses` (`EXPID`, `PROJECTID`, `EXPTYPE`, `EXPITEM`, `SUPPLIER`, `DATEGIVEN`, `DATEADDED`, `EXPENSES`, `REQUESTEDBY`, `ENCODER`, `EMPID`) VALUES
(1, 1, 'BID DOCS', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '25000.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(2, 1, 'BID PREP', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '5000.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(3, 1, 'AREGLO', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '402121.31', 'Joken Villanueva', 'Joken Villanueva', 1),
(4, 1, 'COSH', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '3000.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(5, 1, 'PERFORMANCE BOND', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '43557.16', 'Joken Villanueva', 'Joken Villanueva', 1),
(6, 1, 'CARI', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '31600.04', 'Joken Villanueva', 'Joken Villanueva', 1),
(7, 1, 'SURETY BOND (MOBILIZATION)', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '12024.68', 'Joken Villanueva', 'Joken Villanueva', 1),
(8, 1, 'CONTRACT NOTARY', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '1000.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(9, 1, 'PERT CPM', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '2000.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(10, 1, 'QCP', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '3000.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(11, 1, 'MATERIALS TESTING', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '86663.85', 'Joken Villanueva', 'Joken Villanueva', 1),
(12, 1, 'MATERIALS ENGINEER', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '26000.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(13, 1, '0217', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(14, 1, 'AS BUILT PLAN', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(15, 1, 'PROJECT ENGINEER', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(16, 1, 'SURETY BOND RETENTION', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(17, 1, 'SOP', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(18, 1, 'ROYALTY', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(32, 1, 'MATERIALS', 'HARDWARE MATERIALS', 'N/A', '2019-02-13', '2019-02-13', '17424.50', 'SANDY', 'Joken Villanueva', 1),
(33, 1, 'VOUCHER PRINTING', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(34, 1, 'CONTRACTORS AFFIDAVIT', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(35, 1, 'MQC OT', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(36, 1, 'PICTURES', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(37, 1, 'BACK UP COMPUTATION', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(38, 1, 'CEMENT', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(39, 1, 'AGGREGATES', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(40, 1, 'FUEL', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(41, 1, 'VAT', 'N/A', 'N/A', '2019-02-13', '2019-02-13', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(42, 2, 'CEMENT', 'reque', 'HARDWARE', '2019-03-25', '2019-03-18', '20000.00', 'joken', 'Joken Villanueva', 1),
(43, 2, 'BID DOCS', 'bsast', 'N/A', '2019-03-19', '2019-03-18', '50000.00', 'ako', 'Joken Villanueva', 1),
(44, 1, 'CONTRACT NOTARY', 'contract', 'N/A', '2019-05-23', '2019-05-26', '50000.00', 'jesssa', 'tester', 2),
(45, 1, 'FUEL', 'tavel allowance', 'N/A', '2019-11-12', '2019-11-12', '15000.00', 'engr tsutsu', 'itsc', 9),
(46, 4, 'BID DOCS', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(47, 4, 'BID PREP', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(48, 4, 'AREGLO', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(49, 4, 'COSH', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(50, 4, 'PERFORMANCE BOND', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(51, 4, 'CARI', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(52, 4, 'SURETY BOND (MOBILIZATION)', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(53, 4, 'CONTRACT NOTARY', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(54, 4, 'PERT CPM', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(55, 4, 'VOUCHER PRINTING', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(56, 4, 'CONTRACTORS AFFIDAVIT', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(57, 4, 'MQC OT', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(58, 4, 'PICTURES', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(59, 4, 'QCP', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(60, 4, 'MATERIALS TESTING', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(61, 4, 'MATERIALS ENGINEER', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(62, 4, '0217', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(63, 4, 'BACK UP COMPUTATION', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(64, 4, 'AS BUILT PLAN', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(65, 4, 'PROJECT ENGINEER', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(66, 4, 'SURETY BOND RETENTION', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(67, 4, 'SOP', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(68, 4, 'MATERIALS', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(69, 4, 'CEMENT', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(70, 4, 'AGGREGATES', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(71, 4, 'FUEL', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(72, 4, 'ROYALTY', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(73, 4, 'VAT', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(74, 4, 'TARP', 'N/A', 'N/A', '2020-02-10', '2020-02-10', '0.00', 'Joken Villanueva', 'Joken Villanueva', 1),
(77, 4, 'MATERIALS', 'Hollow Blocks and Cement', 'HARDWARE', '2020-02-13', '2020-02-10', '200000.00', 'engr. jesssa ', 'Joken Villanueva', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject`
--

CREATE TABLE `tblproject` (
  `PROJECTID` int(11) NOT NULL,
  `PROJECTNAME` varchar(50) NOT NULL,
  `STARTDATE` date NOT NULL,
  `ENDDATE` date NOT NULL,
  `PROJECTCOST` decimal(13,2) NOT NULL,
  `PROJECTSTATUS` varchar(10) NOT NULL,
  `PROJECTEXPENSES` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproject`
--

INSERT INTO `tblproject` (`PROJECTID`, `PROJECTNAME`, `STARTDATE`, `ENDDATE`, `PROJECTCOST`, `PROJECTSTATUS`, `PROJECTEXPENSES`) VALUES
(1, 'Concreting of Brgy. Camindangan National Highway, ', '2018-12-05', '2019-03-04', '13404043.99', 'ONGOING', '723391.54'),
(2, 'Salong NHS', '2019-01-18', '2019-04-27', '10000000.00', 'ONGOING', '70000.00'),
(3, 'Two Story Building MOA', '2020-02-23', '2024-12-25', '3000500030.00', 'ONGOING', '0.00'),
(4, 'Development of SM Mall of Asia Cebu', '2020-02-26', '2025-12-27', '36000048762.00', 'FINISHED', '200000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `SUPID` int(11) NOT NULL,
  `SUPCODE` varchar(30) NOT NULL,
  `SUPNAME` text NOT NULL,
  `SUPTIN` varchar(30) NOT NULL,
  `SUPADD` text NOT NULL,
  `SUPCONTACT` varchar(30) NOT NULL,
  `SUPREMARKS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`SUPID`, `SUPCODE`, `SUPNAME`, `SUPTIN`, `SUPADD`, `SUPCONTACT`, `SUPREMARKS`) VALUES
(1, 'S13183229', 'HARDWARE', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccounts`
--
ALTER TABLE `tblaccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`);

--
-- Indexes for table `tblcommonmaster`
--
ALTER TABLE `tblcommonmaster`
  ADD PRIMARY KEY (`COMMON_ID`);

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`EXPID`);

--
-- Indexes for table `tblproject`
--
ALTER TABLE `tblproject`
  ADD PRIMARY KEY (`PROJECTID`);

--
-- Indexes for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  ADD PRIMARY KEY (`SUPID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccounts`
--
ALTER TABLE `tblaccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcommonmaster`
--
ALTER TABLE `tblcommonmaster`
  MODIFY `COMMON_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `EXPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tblproject`
--
ALTER TABLE `tblproject`
  MODIFY `PROJECTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `SUPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
