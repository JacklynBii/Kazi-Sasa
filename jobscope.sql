-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 10, 2010 at 05:01 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `jobscope`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `applicants`
-- 

CREATE TABLE `applicants` (
  `a_id` int(4) NOT NULL auto_increment,
  `a_uid` varchar(30) NOT NULL,
  `a_jid` varchar(30) NOT NULL,
  PRIMARY KEY  (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `applicants`
-- 

INSERT INTO `applicants` (`a_id`, `a_uid`, `a_jid`) VALUES 
(17, '11', '15'),
(18, '10', '18'),
(19, '10', '15'),
(20, '12', '19'),
(21, '12', '17'),
(22, '12', '20'),
(23, '10', '17');

-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
  `cat_id` int(4) NOT NULL auto_increment,
  `cat_nm` varchar(30) NOT NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `categories`
-- 

INSERT INTO `categories` (`cat_id`, `cat_nm`) VALUES 
(10, 'inport-export'),
(11, 'it-software'),
(12, 'it-hardware'),
(14, 'banking'),
(20, 'finance');

-- --------------------------------------------------------

-- 
-- Table structure for table `contact`
-- 

CREATE TABLE `contact` (
  `cont_id` int(4) NOT NULL auto_increment,
  `cont_fnm` varchar(30) NOT NULL,
  `cont_email` varchar(20) NOT NULL,
  `cont_query` varchar(300) NOT NULL,
  PRIMARY KEY  (`cont_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `contact`
-- 

INSERT INTO `contact` (`cont_id`, `cont_fnm`, `cont_email`, `cont_query`) VALUES 
(14, 'riddhi', 'riddhi_patel@gmail.c', 'xyz'),
(15, 'darshana', 'darshana@yahoo.com', 'abc');

-- --------------------------------------------------------

-- 
-- Table structure for table `employees`
-- 

CREATE TABLE `employees` (
  `ee_id` int(4) NOT NULL auto_increment,
  `ee_fnm` varchar(30) NOT NULL,
  `ee_pwd` varchar(10) NOT NULL,
  `ee_gender` varchar(1) NOT NULL,
  `ee_email` varchar(30) NOT NULL,
  `ee_add` varchar(300) NOT NULL,
  `ee_phno` varchar(10) NOT NULL,
  `ee_mobileno` varchar(10) NOT NULL,
  `ee_current_location` varchar(20) NOT NULL,
  `ee_annualsalary` int(10) NOT NULL,
  `ee_current_industry` varchar(20) NOT NULL,
  `ee_qualification` varchar(10) NOT NULL,
  `ee_profile` varchar(300) NOT NULL,
  `ee_resume` longtext NOT NULL,
  PRIMARY KEY  (`ee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `employees`
-- 

INSERT INTO `employees` (`ee_id`, `ee_fnm`, `ee_pwd`, `ee_gender`, `ee_email`, `ee_add`, `ee_phno`, `ee_mobileno`, `ee_current_location`, `ee_annualsalary`, `ee_current_industry`, `ee_qualification`, `ee_profile`, `ee_resume`) VALUES 
(10, 'megha', 'megha11', 'f', 'megha_patel@gmail.com', '"megha",2nd floor ,rajkot', '0281257254', '9934235456', 'rajkot', 45000, 'infosys', 'mba', 'xyz', 'uploads/megha.doc'),
(11, 'darshana', 'darshana', 'f', 'darshana_\\@yahoo.com', '"darshana",ahemadabad', '0792345672', '9423456789', 'mumbai', 35000, 'tcs', 'mtec', 'xyz', 'uploads/darshana.doc'),
(12, 'parth', 'parth1111', 'M', 'parth@gmail.com', '"parth",bhavnagar.', '0278213355', '9923555676', 'bhavnagar', 40000, 'tata', 'mba', 'xyz', 'uploads/parth.doc'),
(13, 'samir', '123123123', 'M', 'samir@gmail.com', '"samin",borivaly,mumbai.', '0112345678', '9987766554', 'mumbai', 40000, 'birla', 'mba', 'xyz', 'uploads/samin.doc');

-- --------------------------------------------------------

-- 
-- Table structure for table `employers`
-- 

CREATE TABLE `employers` (
  `er_id` int(4) NOT NULL auto_increment,
  `er_fnm` varchar(30) NOT NULL,
  `er_pwd` varchar(10) NOT NULL,
  `er_company` varchar(30) NOT NULL,
  `er_add` varchar(100) NOT NULL,
  `er_ph` varchar(10) NOT NULL,
  `er_email` varchar(30) NOT NULL,
  `er_company_profile` varchar(300) NOT NULL,
  PRIMARY KEY  (`er_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `employers`
-- 

INSERT INTO `employers` (`er_id`, `er_fnm`, `er_pwd`, `er_company`, `er_add`, `er_ph`, `er_email`, `er_company_profile`) VALUES 
(12, 'admin', '1111111', 'infosys', '"infosys",mumbai.', '0112345678', 'infosys_company@gmail.com', 'abc'),
(13, 'riddhi', '1234567', 'infosys', 'infosys,mumbai.', '9925361132', 'riddhi@gmail.com', 'abc'),
(14, 'vishwa', '12345678', 'tcs', '"tcs",gandinagar.', '0792143576', 'vishwa_patel@gmail.com', 'abc'),
(15, 'rushika', '12121212', 'patny', 'patnyy,gandhinagar.', '0798765432', 'patny_company@yahoo.com', 'abc'),
(16, 'sagar', '2222222', 'tcs', 'tcs,ahemadabad', '0792345677', 'sagar@gmail.com', 'dsfg');

-- --------------------------------------------------------

-- 
-- Table structure for table `jobs`
-- 

CREATE TABLE `jobs` (
  `j_id` int(4) NOT NULL auto_increment,
  `j_category` varchar(40) NOT NULL,
  `j_owner_name` varchar(30) NOT NULL,
  `j_title` varchar(30) NOT NULL,
  `j_hours` float(3,1) NOT NULL,
  `j_salary` int(10) NOT NULL,
  `j_experience` int(3) NOT NULL,
  `j_discription` varchar(300) NOT NULL,
  `j_city` varchar(20) NOT NULL,
  `j_active` int(1) NOT NULL default '0',
  PRIMARY KEY  (`j_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- 
-- Dumping data for table `jobs`
-- 

INSERT INTO `jobs` (`j_id`, `j_category`, `j_owner_name`, `j_title`, `j_hours`, `j_salary`, `j_experience`, `j_discription`, `j_city`, `j_active`) VALUES 
(15, 'it-software', 'riddhi', 'need for the manager', 10.0, 40000, 2, 'abc', 'pune', 1),
(17, 'banking', 'riddhi', 'need for the ca', 8.0, 45000, 4, 'dff', 'ahmedabad', 1),
(18, 'it-hardware', 'vishwa', 'need for the manager', 10.0, 34000, 2, 'fdrf', 'pune', 1),
(19, 'inport-export', 'vishwa', 'need for thr tredar', 12.0, 25000, 3, 'sdsdf', 'rajkot', 1),
(20, 'finance', 'rushika', 'need for the assistent', 8.0, 34667, 3, 'wrert', 'pune', 1),
(21, 'banking', 'rushika', 'need for the manager', 10.0, 45000, 5, 'dsd', 'kolkota', 1),
(22, 'inport-export', 'riddhi', 'need for the assistent', 12.0, 10000, 1, 'abv', 'porbunder', 1);
