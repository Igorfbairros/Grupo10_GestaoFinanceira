-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/12/2023 às 04:35
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testesistema`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_transacao`
--

CREATE TABLE `tipo_transacao` (
  `Id` int(11) NOT NULL,
  `Descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo_transacao`
--

INSERT INTO `tipo_transacao` (`Id`, `Descricao`) VALUES
(1, 'Entrada'),
(2, 'Saída');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `Id` int(11) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  `Valor` double(10,2) NOT NULL,
  `Tipo_Transacao` int(11) NOT NULL,
  `Exibe` tinyint(4) NOT NULL DEFAULT 1,
  `Data` timestamp NOT NULL DEFAULT current_timestamp(),
  `Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `transacoes`
--

INSERT INTO `transacoes` (`Id`, `Descricao`, `Valor`, `Tipo_Transacao`, `Exibe`, `Data`, `Id_Usuario`) VALUES
(1, 'teste', 50.00, 1, 1, '2023-12-05 20:23:38', 8),
(2, 'saidateste', 30.00, 2, 1, '2023-12-05 20:23:54', 8),
(3, 'teste', 50.00, 1, 1, '2023-12-06 03:20:23', 4),
(4, 'teste1', 520.00, 1, 1, '2023-12-06 03:20:43', 4),
(5, 'teste2', 70.00, 2, 1, '2023-12-06 03:21:43', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Senha` char(40) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nome`, `Email`, `Senha`, `Data`) VALUES
(1, 'nubia', 'eu2@gmail.com', '123', '2023-11-29 21:33:17'),
(4, '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2023-12-05 19:24:29'),
(5, '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2023-12-05 19:25:03'),
(6, '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2023-12-05 19:56:16'),
(7, '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2023-12-05 20:05:20'),
(8, 'Nubia', 'teste12@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2023-12-05 20:18:36'),
(9, 'nubia', 'teste1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2023-12-05 20:55:40');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tipo_transacao`
--
ALTER TABLE `tipo_transacao`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Transacoes_TipoTransacao` (`Tipo_Transacao`),
  ADD KEY `FK_Transacao_Usuario` (`Id_Usuario`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tipo_transacao`
--
ALTER TABLE `tipo_transacao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `transacoes`
--
ALTER TABLE `transacoes`
  ADD CONSTRAINT `FK_Transacao_Usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id`),
  ADD CONSTRAINT `FK_Transacoes_TipoTransacao` FOREIGN KEY (`Tipo_Transacao`) REFERENCES `tipo_transacao` (`Id`),
  ADD CONSTRAINT `FK_Transacoes_Usuarios` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
