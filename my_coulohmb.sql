-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2022 alle 08:38
-- Versione del server: 8.0.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_coulohmb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Dipartimenti`
--

CREATE TABLE IF NOT EXISTS `Dipartimenti` (
  `Codice` char(5) NOT NULL,
  `Descrizione` char(20) NOT NULL,
  `Sede` char(20) DEFAULT NULL,
  `Manager` smallint DEFAULT NULL,
  PRIMARY KEY (`Codice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=1 ;

--
-- Dump dei dati per la tabella `Dipartimenti`
--

INSERT INTO `Dipartimenti` (`Codice`, `Descrizione`, `Sede`, `Manager`) VALUES
('Amm', 'Amministrazione', 'Roma', 12),
('Direz', 'Direzione Generale', 'Roma', 13),
('Mag', 'Magazzino', 'Torino', 10),
('Mkt', 'Marketing', 'Milano', 13),
('Prod', 'Produzione', 'Torino', 10),
('R&S', 'Ricerca & Sviluppo', 'Torino', 14),
('Pers', 'Personale', 'Roma', 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `Impiegati`
--

CREATE TABLE IF NOT EXISTS `Impiegati` (
  `ID` smallint NOT NULL,
  `Nome` char(20) NOT NULL,
  `Cognome` char(30) NOT NULL,
  `Residenza` char(20) DEFAULT '*** Manca Residenza',
  `Stipendio` decimal(9,2) DEFAULT NULL,
  `Dipartimento` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Dipartimento` (`Dipartimento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=1 ;

--
-- Dump dei dati per la tabella `Impiegati`
--

INSERT INTO `Impiegati` (`ID`, `Nome`, `Cognome`, `Residenza`, `Stipendio`, `Dipartimento`) VALUES
(1, 'Mario', 'Rossi', 'Torino', '32000.00', 'Prod'),
(5, 'Marco', 'Viola', 'Palermo', '28300.00', NULL),
(6, 'Enrico', 'Mori', 'Torino', '25000.00', 'Mag'),
(10, 'Margherita', 'Colombi', 'Roma', '65000.00', 'Prod'),
(11, 'Fabrizio', 'Magenta', 'Torino', '41000.00', 'Prod'),
(12, 'Franco', 'Volpi', 'Bari', '61000.00', 'Amm'),
(13, 'Ugo', 'Boss', 'Cagliari', '85000.00', 'Direz'),
(14, 'Mario', 'Gatti', 'Firenze', '57000.00', 'R&S'),
(16, 'Elisabetta', 'Gregis', 'Roma', '29000.00', 'Amm'),
(17, 'Laura', 'Moretti', 'Venezia', '52600.00', 'Mkt'),
(18, 'Enrica', 'Bruni', 'Firenze', '61500.00', 'Mag'),
(19, 'Anita', 'Bianco', 'Perugia', '39000.00', 'Direz');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
