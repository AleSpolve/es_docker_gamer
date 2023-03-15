-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Creato il: Feb 21, 2023 alle 22:42
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `department`
--

CREATE TABLE `department` (
  `dept_id` int(10) UNSIGNED NOT NULL,
  `dept_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(10, 'ACCOUNTING'),
(20, 'RESEARCH'),
(30, 'SALES'),
(40, 'ADMINISTRATION');

-- --------------------------------------------------------

--
-- Struttura della tabella `gamers`
--

CREATE TABLE `gamers` (
  `id` int(11) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `gamers`
--

INSERT INTO `gamers` (`id`, `nickname`, `age`, `level`) VALUES
(1, 'nikko72', 31, 'pro'),
(2, 'giugi91', 22, 'medium'),
(3, 'frank99', 24, 'beginner'),
(4, 'paola2002', 20, 'pro');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indici per le tabelle `gamers`
--
ALTER TABLE `gamers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT per la tabella `gamers`
--
ALTER TABLE `gamers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
