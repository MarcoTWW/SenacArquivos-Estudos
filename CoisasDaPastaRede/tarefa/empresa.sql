-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Nov-2023 às 20:44
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `pk_cliente` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` char(11) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`pk_cliente`, `nome`, `cpf`, `tel`, `endereco`, `email`) VALUES
(13, 'Benito Pinilla', '12345678901', '1684363628', 'PO Box 46514', 'bpinilla0@rediff.com'),
(14, 'Demott Savage', '12345678901', '6374466844', 'Apt 346', 'dsavage1@ca.gov'),
(15, 'Gale Fitter', '12345678901', '8761878847', 'Apt 1521', 'gfitter2@desdev.cn'),
(16, 'Marius Speeks', '12345678901', '7187574660', 'Suite 25', 'mspeeks3@furl.net'),
(17, 'Wilbert Miskelly', '12345678901', '8742484276', 'Room 657', 'wmiskelly4@dailymotion.com'),
(18, 'Alysa Lloyds', '12345678901', '2744273187', 'PO Box 64061', 'alloyds5@seattletimes.com'),
(19, 'Kissie Mattielli', '12345678901', '3754762170', 'PO Box 97564', 'kmattielli6@github.io'),
(20, 'Camala MacCrachen', '12345678901', '3027860273', 'Room 351', 'cmaccrachen7@springer.com'),
(21, 'Wyndham Dufty', '12345678901', '7462702924', '11th Floor', 'wdufty8@uiuc.edu'),
(22, 'Bria Sporle', '12345678901', '3237033445', 'Suite 2', 'bsporle9@twitpic.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `pk_produto` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `valor` float NOT NULL,
  `descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`pk_produto`, `nome`, `valor`, `descricao`) VALUES
(1, 'Cheese - Havarti, Roasted Garlic', 86.8, 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit'),
(2, 'Sauce - Hollandaise', 96.9, 'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend'),
(3, 'Muffin Hinge - 211n', 29.7, 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum'),
(4, 'Rosemary - Fresh', 57.3, 'nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit'),
(5, 'Quail - Jumbo Boneless', 30.3, 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum'),
(6, 'Flour - All Purpose', 81.6, 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit'),
(7, 'Yogurt - Raspberry, 175 Gr', 60.5, NULL),
(8, 'Corn - On The Cob', 41.9, 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci'),
(9, 'Flour - Semolina', 99.2, NULL),
(10, 'Chicken - Wieners', 19.7, 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `pk_vendas` int(11) NOT NULL,
  `valor` float NOT NULL,
  `forma_pagamento` enum('dinheiro','pix','credito','debito','carne') DEFAULT NULL,
  `fk_cliente` int(11) NOT NULL,
  `fk_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`pk_cliente`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`pk_produto`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`pk_vendas`),
  ADD KEY `fk_produto` (`fk_produto`),
  ADD KEY `fk_cliente` (`fk_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `pk_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `pk_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `pk_vendas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`fk_produto`) REFERENCES `produto` (`pk_produto`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`pk_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
