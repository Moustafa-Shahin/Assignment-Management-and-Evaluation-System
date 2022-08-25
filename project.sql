-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 05:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `assessment_code` int(9) NOT NULL,
  `module_code` varchar(15) NOT NULL,
  `name` varchar(250) NOT NULL,
  `number_markers` varchar(9) NOT NULL,
  `marking_scheme` varchar(9) NOT NULL,
  `weighs` varchar(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `deadline` varchar(15) NOT NULL,
  `markers` varchar(250) NOT NULL,
  `sub_assessment` varchar(250) NOT NULL,
  `sub_assessment_description` varchar(250) NOT NULL,
  `sub_assessment_weight` varchar(250) NOT NULL,
  `sub_assessment_marking_scheme` varchar(25) NOT NULL,
  `sub_assessment_deadline` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`assessment_code`, `module_code`, `name`, `number_markers`, `marking_scheme`, `weighs`, `description`, `deadline`, `markers`, `sub_assessment`, `sub_assessment_description`, `sub_assessment_weight`, `sub_assessment_marking_scheme`, `sub_assessment_deadline`) VALUES
(36, '101', 'Assignment 1', '2', 'no', '25%', 'Draw an ER drawing.', '2022-06-01', 'All Lecturers', ' ', ' ', ' ', ' ', ' '),
(37, '102', 'Assignment 2', '2', 'no', '25%', 'Develop an webpage.', '2022-06-01', 'All Lecturers', ' ', ' ', ' ', ' ', ' '),
(38, '104', 'assignment 3', '2', 'no', '25%', 'Explain the DC.', '2022-05-31', 'L B', ' ', ' ', ' ', ' ', ' '),
(39, '105', 'assignment 4', '2', 'no', '25%', 'Write a code.', '2022-06-02', 'All Lecturers', ' ', ' ', ' ', ' ', ' '),
(40, '103', 'assignment 5', '2', 'no', '25%', 'Do the programming.', '2022-06-02', 'L B', ' ', ' ', ' ', ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `aid` int(9) NOT NULL,
  `aname` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `adiscription` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `id` int(5) NOT NULL,
  `lecturer_id` varchar(9) NOT NULL,
  `student_id` varchar(9) NOT NULL,
  `module_code` varchar(9) NOT NULL,
  `module_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`id`, `lecturer_id`, `student_id`, `module_code`, `module_name`) VALUES
(16, 'L1', '20', '101', 'DBMS'),
(17, 'L1', '24', '101', 'DBMS'),
(18, 'L1', '27', '101', 'DBMS'),
(19, 'L1', '29', '101', 'DBMS'),
(20, 'L1', '28', '101', 'DBMS'),
(21, 'L1', '20', '103', 'Core Java'),
(22, 'L1', '24', '103', 'Core Java'),
(23, 'L1', '27', '103', 'Core Java'),
(24, 'L1', '29', '103', 'Core Java'),
(25, 'L1', '28', '103', 'Core Java');

-- --------------------------------------------------------

--
-- Table structure for table `marking_scheme`
--

CREATE TABLE `marking_scheme` (
  `id` int(9) NOT NULL,
  `module_code` varchar(9) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `assessment_code` varchar(9) NOT NULL,
  `criteria` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `percentage` int(9) NOT NULL,
  `range_type` varchar(50) NOT NULL,
  `marks_range` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marking_scheme`
--

INSERT INTO `marking_scheme` (`id`, `module_code`, `module_name`, `assessment_code`, `criteria`, `description`, `percentage`, `range_type`, `marks_range`) VALUES
(26, 'CN5103', 'Operating Systems', '22', 'Project Plan and Proposed Solution', 'Relation being theory and practical work produced', 40, 'Yes', '5'),
(25, 'CN5103', 'Operating Systems', '22', 'Problem Definition and Literature Review', 'Understanding of topic area', 20, 'Yes', '3'),
(24, 'CN5103', 'Operating Systems', '22', 'Problem Definition and Literature Review', 'How well does the report identify the problem being invested?', 40, 'No', '3'),
(31, '567', 'Statistics', '24', 'good', 'data', 20, 'Yes', '5-20');

-- --------------------------------------------------------

--
-- Table structure for table `marking_scheme_marks`
--

CREATE TABLE `marking_scheme_marks` (
  `id` int(9) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `module_code` varchar(10) NOT NULL,
  `assessment_code` varchar(10) NOT NULL,
  `marker` varchar(250) NOT NULL,
  `mark_given` int(5) NOT NULL,
  `total_marks` int(5) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marking_scheme_marks`
--

INSERT INTO `marking_scheme_marks` (`id`, `student_id`, `module_code`, `assessment_code`, `marker`, `mark_given`, `total_marks`, `feedback`) VALUES
(39, 'u1407170', 'CN5103', '22', 's1', 1, 6, 'Good effort'),
(40, 'u1407170', 'CN5103', '22', 's1', 2, 6, 'Good effort'),
(41, 'u1407170', 'CN5103', '22', 's1', 3, 6, 'Good effort'),
(42, 'u1309254', '567', '24', 's1', 18, 18, 'Good Assignment');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mark_id` int(9) NOT NULL,
  `module_code` varchar(9) NOT NULL,
  `assessment_code` varchar(9) NOT NULL,
  `sub_assessment` varchar(50) NOT NULL,
  `student_id` varchar(9) NOT NULL,
  `mark1` int(5) NOT NULL,
  `mark2` int(5) NOT NULL,
  `mark3` int(5) NOT NULL,
  `final_mark` int(5) NOT NULL,
  `engagement` varchar(25) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mark_id`, `module_code`, `assessment_code`, `sub_assessment`, `student_id`, `mark1`, `mark2`, `mark3`, `final_mark`, `engagement`, `feedback`) VALUES
(76, 'CO312', '', '36', '20', 89, 0, 0, 89, 'Good', 'Good'),
(70, 'CO312', '', '36', '24', 78, 0, 0, 78, 'Ok', 'Medium effort'),
(71, 'CO423', '', '37', '24', 87, 0, 0, 87, 'Good', 'Good attempt'),
(75, '102', '', '37', '20', 88, 0, 0, 88, 'Good', 'nice'),
(73, '103', '', '40', '20', 85, 0, 0, 85, 'Good', 'Nice'),
(74, '101', '', '36', '28', 80, 0, 0, 80, 'Good', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(9) NOT NULL,
  `module_code` varchar(7) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_leader` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `level` varchar(25) NOT NULL,
  `assessment1` varchar(50) NOT NULL,
  `assessment2` varchar(50) NOT NULL,
  `assessment3` varchar(50) NOT NULL,
  `lecturers_linked` varchar(250) NOT NULL,
  `engagement_points` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `module_code`, `module_name`, `module_leader`, `description`, `level`, `assessment1`, `assessment2`, `assessment3`, `lecturers_linked`, `engagement_points`) VALUES
(19, 'CO312', 'DBMS', 'L1', 'Introduction of DBMS', '5', ' ', '36', ' ', '', ''),
(16, 'CO423', 'WEB TECHNOLOGY', 'L1', 'Web development', '5', ' ', '37', ' ', '', ''),
(18, 'CO424', 'Core Java', 'L1', 'Introduction to java', '5', ' ', '40', ' ', '', ''),
(15, 'CO218', 'Data Comuncations', 'L1', 'IP Addressing', '5', ' ', '38', ' ', '', ''),
(17, 'CO215', 'C++', 'L1', 'Programming', '5', ' ', '39', ' ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(8) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `rank` varchar(15) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `rank`, `level`) VALUES
('20', 'Mustafa ', 'Shahin', 'musta@gmail.com', 'musta', 'pass', 'Student', 5),
('a', 'Admin', 'Example', 'admin@example.co.uk', 'admin', 'Pass', 'Admin', 0),
('L1', 'L B', 'Sir', 'sir@example.com', 'LBsir', 'Pass', 'Lecturer', 0),
('2', 'Musta', 'Shahin', 'musta@gmaail.com', 'Shahin', 'Pass', 'admin', 0),
('24', 'Hrishikesh', 'gogoi', 'Hrishi@example.com', 'Hrishikesh', 'pass', 'student', 5),
('225', 'ravi', 'shankar', 'gmaail@aa.com', 'ravi', 'pass', 'supervisor', 0),
('27', 'Surajit', 'chokroborty', 'suraj@123.com', 'Surajit', 'pass', 'student', 5),
('29', 'RAMON', 'CHETRI', 'chetri@gmail.com', 'RAMON', 'pass', 'student', 5),
('28', 'NIDDEEP', 'DAS', 'Niddeep@example.com', 'Niddeep', 'pass', 'student', 5),
('3', 'NIK', 'SIR', 'nik@gmail.com', 'nik@gmail.', 'Pass', 'lecturer', 0),
('4', 'SARMAH', 'SIR', 'Sarmah@gmail.com', 'Sarmah@gma', 'Pass', 'lecturer', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`assessment_code`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marking_scheme`
--
ALTER TABLE `marking_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marking_scheme_marks`
--
ALTER TABLE `marking_scheme_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `assessment_code` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `aid` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `marking_scheme`
--
ALTER TABLE `marking_scheme`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `marking_scheme_marks`
--
ALTER TABLE `marking_scheme_marks`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mark_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
