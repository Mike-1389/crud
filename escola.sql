-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Ago-2019 às 15:20
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `RM` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Idade` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefone` varchar(50) NOT NULL,
  `Cidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`RM`, `Nome`, `Idade`, `Email`, `Telefone`, `Cidade`) VALUES
(1, 'Mike Lima de Paula', '15', 'mike@gmail.com', '45787588', 'Mauá'),
(2, 'Lucas Menezes Teixeira', '15', 'Lusca@gmail.com', '4728983', 'Ribeirão Pires'),
(3, 'Felipe Cruz da Silva Souza', '14', 'Cruz@gmail.com', '423434455', 'Mauá'),
(4, 'Heycker Lima de Paula', '12', 'Heycker@gmail.com', '454334434', 'Mauá');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `codcurso` int(11) NOT NULL,
  `curso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codcurso`, `curso`) VALUES
(1, 'Admin'),
(2, 'Ensino Médio'),
(3, 'informatica'),
(4, 'banco de dados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `Matricula` int(11) NOT NULL,
  `Datama` date NOT NULL,
  `rm_aluno` int(11) NOT NULL,
  `cod_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`Matricula`, `Datama`, `rm_aluno`, `cod_curso`) VALUES
(1, '2019-05-12', 1, 1),
(2, '2019-07-12', 2, 2),
(3, '2019-10-15', 3, 3),
(4, '2019-12-05', 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`RM`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codcurso`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`Matricula`),
  ADD KEY `rm_aluno` (`rm_aluno`,`cod_curso`),
  ADD KEY `cod_curso` (`cod_curso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `RM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `codcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `Matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`rm_aluno`) REFERENCES `alunos` (`RM`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`codcurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
