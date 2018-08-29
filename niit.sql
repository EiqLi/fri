-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 08 月 29 日 02:17
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `niit`
--

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` varchar(20) NOT NULL,
  `course_name` varchar(16) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` varchar(20) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `score` varchar(16) DEFAULT NULL,
  KEY `stu_id` (`stu_id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `stu`
--

CREATE TABLE IF NOT EXISTS `stu` (
  `rollno` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` int(11) NOT NULL,
  `gender` char(1) DEFAULT 'M',
  `tel` varchar(18) NOT NULL,
  PRIMARY KEY (`rollno`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
