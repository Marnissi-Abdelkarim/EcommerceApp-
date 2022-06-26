-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 juin 2022 à 00:17
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfaapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `app_role`
--

CREATE TABLE `app_role` (
  `id` bigint(20) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_role`
--

INSERT INTO `app_role` (`id`, `role_name`) VALUES
(1, 'ROLE_ADMIN_PORD'),
(2, 'USER'),
(3, 'ROLE_ADMIN_USER');

-- --------------------------------------------------------

--
-- Structure de la table `app_user`
--

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_user`
--

INSERT INTO `app_user` (`id`, `email`, `password`, `username`) VALUES
(1, 'adminprod@gmail.com', '$2a$10$o4jrUr5J4qcHnkgZYLgGbuvp5TWYKrw0Ioswef7/V6qGJ4s4wffFa', 'admin'),
(2, 'user@gmail.com', '$2a$10$lfdEs03rouHXvdiHnUbtnOLYJBHOB4oFi7f.X35PjskijfPW13Bj2', 'user'),
(3, 'adminuser@gmail.com', '$2a$10$Sm/PPhwuPt9dRhq9iuGOe.Wx4VCht.QmOiWD7rM3/l0M57q1.sANO', 'admin2'),
(6, 'user1@gmail.com', '$2a$10$hfSB6lk8VUhjRx824CUg5.A79X83tBsz11aM.KeJlklgCyASALpBC', 'user1'),
(7, 'user20@gmail.com', '$2a$10$aZz/blvx1Hh30ACWqHgZkOB1fhG7iil3p76Hhyhb8.vwOEfKZWTdG', 'user20'),
(8, 'user30@gmail.com', '$2a$10$jKdBNmC3eTkQbbDQUxF1jeEWh/qg.p869iJpgnzFVEp2.PBW4/diS', 'user30'),
(9, 'user50@gmail.com', '$2a$10$81Uxv6Kv3ISS7JmLVX2Leenhoq0sh0hlRoE4.hwX43CKO88PHh5Hi', 'user50');

-- --------------------------------------------------------

--
-- Structure de la table `app_user_roles`
--

CREATE TABLE `app_user_roles` (
  `app_user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_user_roles`
--

INSERT INTO `app_user_roles` (`app_user_id`, `roles_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(3, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `description`, `name`, `photo_name`) VALUES
(1, 'descr category1', 'SHOES', 'cat-img-2.jpg'),
(2, 'descr category2', 'WATCHES', 'cat-img-3.jpg'),
(3, 'descr category3', 'ELECTRONICS', 'cat-img-4.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `address`, `email`, `firstname`, `lastname`, `phone_number`, `username`) VALUES
(1, 'tetouane', 'user1@gmail.com', 'amine', 'sami', '0770455665', 'admin'),
(3, 'tetouane', 'user1@gmail.com', 'amino', 'sami', '0770455665', 'admin'),
(4, 'tetouane', 'user1@gmail.com', 'amine', 'sami', '0770455665', 'admin'),
(5, 'tetouane', 'user1@gmail.com', 'amineeee', 'sami', '0770455665', 'admin'),
(6, 'tetouane', 'user1@gmail.com', 'amineeee', 'sami', '0770455665', 'admin'),
(7, 'tetouane', 'user1@gmail.com', 'amineeee', 'sami', '0770455665', 'admin'),
(8, 'tetouane', 'user1@gmail.com', 'amineeee', 'sami', '0770455665', 'admin'),
(9, 'tetouane', 'user1@gmail.com', 'amineeee', 'sami', '0770455665', 'admin'),
(10, 'fes', 'user20@gmail.com', 'jan', 'henry', '0909090909', 'user'),
(11, 'meknes', 'user20@gmail.com', 'amine', 'sam', '0909090909', 'user'),
(12, 'tetouane', 'user@gmail.com', 'amine', 'sami', '0770455665', 'user'),
(13, 'tetouane', 'user@gmail.com', 'amine', 'sami', '0770455665', 'user'),
(14, 'FES,HAY FARAH', 'user@gmail.com', 'Chifae', 'Chlyah', '0770831055', 'user'),
(15, 'FES,HAY FARAH', 'user@gmail.com', 'Chifae', 'Chlyah', '0770831055', 'user'),
(16, 'FES,HAY FARAH', 'user@gmail.com', 'Chifae', 'Chlyah', '0770831055', 'user'),
(17, 'FES,HAY FARAH', 'user@gmail.com', 'Chifae', 'Chlyah', '0770831055', 'user'),
(18, 'FES,HAY FARAH', 'user@gmail.com', 'Chifae1', 'Chlyah', '0770831055', 'user'),
(19, 'FES,HAY FARAH', 'user@gmail.com', 'Chifae2', 'Chlyah', '0770831055', 'user'),
(20, 'FES,HAY FARAH', 'user@gmail.com', 'Chifae', 'Chlyah', '0770831055', 'user'),
(21, 'FES,HAY FARAH', 'user@gmail.com', 'CHIFAECHIFAE', 'CHLYAH', '0770831055', 'user'),
(22, 'fes', 'user@gmail.com', 'karim', 'marnissi', '0707831055', 'user'),
(23, 'fes', 'user@gmail.com', 'karim', 'marnissi', '0707831055', 'user'),
(24, '', '', '', '', '', ''),
(25, 'fes', 'user50@gmail.com', 'karim', 'marnissi', '0707831055', 'user50');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `is_payement_confirmed` bit(1) NOT NULL,
  `total_amount` double NOT NULL,
  `client_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `date`, `is_payement_confirmed`, `total_amount`, `client_id`) VALUES
(1, '2022-06-06 17:25:56.000000', b'1', 10993, 1),
(3, '2022-06-06 17:40:47.000000', b'0', 32236, 3),
(4, '2022-06-06 17:53:21.000000', b'1', 32236, 4),
(5, '2022-06-06 17:56:46.000000', b'1', 7824, 5),
(6, '2022-06-06 17:59:29.000000', b'0', 7824, 6),
(7, '2022-06-06 18:00:43.000000', b'1', 7824, 7),
(8, '2022-06-06 18:03:18.000000', b'1', 7824, 8),
(9, '2022-06-06 18:04:57.000000', b'1', 7824, 9),
(10, '2022-06-06 20:38:32.000000', b'1', 36768, 10),
(11, '2022-06-07 13:20:05.000000', b'0', 128974, 11),
(12, '2022-06-07 13:23:17.000000', b'0', 135884, 12),
(13, '2022-06-07 13:26:43.000000', b'1', 23706, 13),
(14, '2022-06-21 22:27:44.000000', b'1', 2334, 14),
(15, '2022-06-24 18:28:24.000000', b'1', 40044, 15),
(16, '2022-06-25 10:21:42.000000', b'1', 49380, 16),
(17, '2022-06-25 10:25:33.000000', b'0', 493800, 17),
(18, '2022-06-25 19:00:24.000000', b'0', 10762, 18),
(19, '2022-06-25 19:03:02.000000', b'0', 10762, 19),
(20, '2022-06-25 19:13:22.000000', b'0', 39086, 20),
(21, '2022-06-25 21:25:55.000000', b'0', 10762, 21),
(22, '2022-06-26 15:53:01.000000', b'1', 35226, 22),
(23, '2022-06-26 16:49:44.000000', b'1', 35226, 23),
(24, '2022-06-26 17:47:14.000000', b'1', 0, 24),
(25, '2022-06-26 21:06:08.000000', b'1', 224666, 25);

-- --------------------------------------------------------

--
-- Structure de la table `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order_item`
--

INSERT INTO `order_item` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 7081, 1, 1, 14),
(2, 1304, 3, 1, 15),
(3, 7081, 4, 3, 14),
(4, 1304, 3, 3, 15),
(5, 7081, 4, 4, 14),
(6, 1304, 3, 4, 15),
(7, 1304, 6, 5, 15),
(8, 1304, 6, 6, 15),
(9, 1304, 6, 7, 15),
(10, 1304, 6, 8, 15),
(11, 1304, 6, 9, 15),
(12, 6910, 2, 10, 8),
(13, 9894, 1, 10, 12),
(14, 6527, 2, 10, 13),
(15, 6910, 2, 11, 8),
(16, 9894, 9, 11, 12),
(17, 6527, 4, 11, 13),
(18, 6910, 3, 12, 8),
(19, 9894, 9, 12, 12),
(20, 6527, 4, 12, 13),
(21, 7124, 3, 13, 5),
(22, 2334, 1, 13, 9),
(23, 2334, 1, 14, 9),
(24, 7124, 3, 15, 5),
(25, 2334, 8, 15, 9),
(26, 7124, 3, 16, 5),
(27, 2334, 12, 16, 9),
(28, 7124, 30, 17, 5),
(29, 2334, 120, 17, 9),
(30, 7124, 1, 18, 5),
(31, 2334, 1, 18, 9),
(32, 1304, 1, 18, 15),
(33, 7124, 1, 19, 5),
(34, 2334, 1, 19, 9),
(35, 1304, 1, 19, 15),
(36, 7124, 1, 20, 5),
(37, 2334, 1, 20, 9),
(38, 7081, 4, 20, 14),
(39, 1304, 1, 20, 15),
(40, 7124, 1, 21, 5),
(41, 2334, 1, 21, 9),
(42, 1304, 1, 21, 15),
(43, 676, 1, 22, 4),
(44, 6910, 5, 22, 8),
(45, 676, 1, 23, 4),
(46, 6910, 5, 23, 8),
(47, 5976, 11, 25, 3),
(48, 6910, 23, 25, 8);

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `date_payment` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `createdat` datetime(6) DEFAULT NULL,
  `available` bit(1) NOT NULL,
  `currentprice` double NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo_name` varchar(255) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `promotion` bit(1) NOT NULL,
  `selected` bit(1) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `createdat`, `available`, `currentprice`, `description`, `name`, `photo_name`, `pid`, `promotion`, `selected`, `category_id`) VALUES
(1, '2022-06-06 17:20:17.000000', b'1', 3769, '3NB3YWYoa8WQHJikGPst6GX1', 'category1 sh9W1B', '1.jpg', 5686, b'0', b'1', 1),
(2, '2022-06-06 17:20:18.000000', b'1', 4372, '1e68JtgkAoCCsSnTE1bUePOo', 'category1 hPjzY6', '1.jpg', 8932, b'1', b'1', 1),
(3, '2022-06-06 17:20:18.000000', b'1', 5976, 'WC6YqLnvTW9GkJFkstRtIioE', 'category1 KGoUGL', '1.jpg', 3516, b'1', b'0', 1),
(4, '2022-06-06 17:20:18.000000', b'0', 676, 'AKDAmdBCbqLh7D7g4ZqKwjBX', 'category1 ETz5vD', '1.jpg', 3367, b'1', b'1', 1),
(5, '2022-06-06 17:20:18.000000', b'1', 7124, 'J5USBIjrF0XivgL37V7IJyCM', 'category1 7J7LzM', '1.jpg', 8854, b'1', b'0', 1),
(6, '2022-06-06 17:20:18.000000', b'0', 3246, 'wbb1GYREaWOFhZa4MdJSiI3X', 'category1 chKXTA', '1.jpg', 9277, b'0', b'0', 1),
(7, '2022-06-06 17:20:18.000000', b'0', 6169, 'BSKpM8lNjcxHuZewaJHwBaax', 'category1 tZoZrY', '1.jpg', 8666, b'0', b'0', 1),
(8, '2022-06-06 17:20:18.000000', b'1', 6910, 'oprhJUginnoBFlYRg8jj0Sjq', 'category2 zbWqxI', '2.jpg', 4541, b'0', b'1', 2),
(9, '2022-06-06 17:20:18.000000', b'1', 2334, '2BcYoGVDvx3vTIgaQtel8OdE', 'category2 siA1DW', '2.jpg', 4719, b'0', b'1', 2),
(10, '2022-06-06 17:20:18.000000', b'0', 2116, 'dYkhfV5jnAcOj2poJVOCPb3I', 'category2 G5zODn', '2.jpg', 8706, b'0', b'1', 2),
(11, '2022-06-06 17:20:18.000000', b'1', 6699, 'FSiUJmzUq5IyDR5OvZN0F9vf', 'category2 kdOmuJ', '2.jpg', 7597, b'1', b'1', 2),
(12, '2022-06-06 17:20:18.000000', b'0', 9894, '0Boxq5S0ts6HrTVL0PGU7Mmk', 'category2 NR2ViT', '2.jpg', 2622, b'0', b'1', 2),
(13, '2022-06-06 17:20:18.000000', b'1', 6527, 'YzuegPlRs7qJsXypKLtzwRfg', 'category2 1JPnpl', '2.jpg', 3789, b'0', b'1', 2),
(14, '2022-06-06 17:20:18.000000', b'0', 7081, 'wvZiG1Y2fr53G55nCgEJGDh4', 'category2 Zc4wWR', '2.jpg', 436, b'0', b'0', 2),
(15, '2022-06-06 17:20:18.000000', b'0', 1304, 'FM8FT0ht4ALZ2NUCJCJAR21z', 'category3 10I4Rt', '3.jpg', 2901, b'1', b'0', 3),
(16, '2022-06-06 17:20:18.000000', b'1', 7175, 'NklNay3yri2oUczmqPUPGHul', 'category3 SzHuLp', '3.jpg', 2889, b'0', b'0', 3),
(17, '2022-06-06 17:20:18.000000', b'0', 7651, 'fbQdEHtgvUkLFoKsBI5VDJky', 'category3 Rjo6AC', '3.jpg', 1911, b'1', b'0', 3),
(18, '2022-06-06 17:20:18.000000', b'1', 819, 'M88DHyvG4YqOndGJmX11u5GR', 'category3 joUIG4', '3.jpg', 4192, b'1', b'1', 3),
(19, '2022-06-06 17:20:18.000000', b'1', 8395, 'I9GmuWI3l1LgtgNrjwkHS6xt', 'category3 xoUweE', '3.jpg', 4032, b'1', b'0', 3),
(20, '2022-06-06 17:20:18.000000', b'0', 8496, 'QvrGfYJNfTyzZlB9KkEcOJNi', 'category3 7XO0o5', '3.jpg', 808, b'1', b'1', 3),
(21, '2022-06-06 17:20:18.000000', b'0', 1670, 'KbgeVz0SFnXUE5JxnLVZBaPK', 'category3 7eEIeQ', '3.jpg', 5457, b'0', b'1', 3);

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `task` (
  `id` bigint(20) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`id`, `task_name`) VALUES
(1, 'T1'),
(2, 'T2'),
(3, 'T3');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `app_role`
--
ALTER TABLE `app_role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_1j9d9a06i600gd43uu3km82jw` (`email`);

--
-- Index pour la table `app_user_roles`
--
ALTER TABLE `app_user_roles`
  ADD KEY `FK1pfb2loa8so5oi6ak7rh6enva` (`roles_id`),
  ADD KEY `FKkwxexnudtp5gmt82j0qtytnoe` (`app_user_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK17yo6gry2nuwg2erwhbaxqbs9` (`client_id`);

--
-- Index pour la table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  ADD KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`);

--
-- Index pour la table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_2gbc34tdkhthcb08clqyebd9s` (`pid`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Index pour la table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `app_role`
--
ALTER TABLE `app_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `app_user_roles`
--
ALTER TABLE `app_user_roles`
  ADD CONSTRAINT `FK1pfb2loa8so5oi6ak7rh6enva` FOREIGN KEY (`roles_id`) REFERENCES `app_role` (`id`),
  ADD CONSTRAINT `FKkwxexnudtp5gmt82j0qtytnoe` FOREIGN KEY (`app_user_id`) REFERENCES `app_user` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK17yo6gry2nuwg2erwhbaxqbs9` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
