-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2013 at 02:51 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz1`
--

CREATE TABLE IF NOT EXISTS `quiz1` (
  `qno` int(10) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` varchar(1) NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `quiz1`
--

INSERT INTO `quiz1` (`qno`, `question`, `answer`, `ans1`, `ans2`, `ans3`, `ans4`) VALUES
(1, 'What does PHP stand for?\r\n', 'd', 'Personal Hypertext Processor\r\n	\r\n	\r\n	\r\n', 'Private Home Page', 'Personal Home Page', 'PHP: Hypertext Preprocessor'),
(2, 'PHP server scripts are surrounded by delimiters, which?\r\n', 'b', '<&>...</&>\r\n	\r\n	\r\n	', '<?php…?>', '<script>...</script>', '<?php>...</?>'),
(3, 'How do you write "Hello World" in PHP\r\n', 'a', 'echo "Hello World";\r\n	\r\n	', 'Document.Write("Hello World");', '"Hello World";', 'none of these'),
(4, 'All variables in PHP start with which symbol?\r\n', 'b', '&', '$', '!', '#'),
(5, 'What is the correct way to end a PHP statement?\r\n', 'c', '</php>', ':', ';', 'New line'),
(6, 'The PHP syntax is most similar to:\r\n', 'a', 'Perl and C', 'Javascript', 'VBscript', 'none of these'),
(7, 'How do you get information from a form that is submitted using the "get" method?\r\n', 'a', '$_GET[];\r\n	\r\n	\r\n 	 \r\n', 'Request.Form;', 'Request.QueryString;', 'none of these'),
(8, 'When using the POST method, variables are displayed in the URL:\r\n', 'a', 'False', 'True', 'cant say', 'none of these'),
(9, 'What is the correct way to include the file "time.inc" ?\r\n', 'd', '<!-- include file="time.inc" -->\r\n	\r\n	\r\n	', '<?php include:"time.inc"; ?>', '<?php include file="time.inc"; ?>', '<?php include "time.inc"; ?>'),
(10, 'What is a correct way to add a comment in PHP?\r\n', 'a', '/*…*/\r\n	\r\n	\r\n	\r\n', '<!--…-->', '*\\..\\*', '<comment>…</comment>');
