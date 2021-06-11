-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 05:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vijesti`
--
CREATE DATABASE IF NOT EXISTS `vijesti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci;
USE `vijesti`;

-- --------------------------------------------------------

--
-- Table structure for table `clanci`
--

CREATE TABLE `clanci` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `clanci`
--

INSERT INTO `clanci` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(6, '01.06.2021.', 'Song of the Sea', 'Between the here, between the now\r\nBetween the North, between the South\r\nBetween the West, between the East\r\nBetween the time, between the place', 'Between the here, between the now\r\nBetween the North, between the South\r\nBetween the West, between the East\r\nBetween the time, between the place\r\n\r\nFrom the shell\r\nThe song of the sea\r\nNeither quiet nor calm\r\nSearching for love again', 'song_of_the_sea.jpg', 'Umjetnost', 1),
(8, '02.06.2021.', 'Tennis racket theorem', 'The tennis racket theorem or intermediate axis theorem is a result in classical mechanics describing the movement of a rigid body with three distinct principal moments of inertia.', 'The tennis racket theorem or intermediate axis theorem is a result in classical mechanics describing the movement of a rigid body with three distinct principal moments of inertia. It is also dubbed the Dzhanibekov effect', 'intermediate-axis-theorem-schematic.png', 'Znanost', 0),
(9, '02.06.2021.', 'Leidenfrost effect', 'This chapter is concerned with drop levitation on a vapor layer when a volatile liquid is brought into contact with a very hot solid. This phenomenon is known as the Leidenfrost effect. A simple theory of a Leidenfrost drop covering the full range of stable shapes?that is, from small quasi-spherical droplets to larger puddles floating on a pocket-like vapor film?is presented. ', 'Perhaps one of the most notable differences between the solid?liquid phase transition of granular and classical materials is the existence in the former of a stable coexistence phase, where the material can remain ?partially melted? for an arbitrary, indefinite length of time [1015,1016]. For an isolated, solid-state classical system exposed to a constant heat source at a temperature higher than its melting point, such a system will (in the absence of external cooling) eventually reach equilibrium both within itself and with said heat source ? that is, the system will become fully, uniformly liquid-like, with only a transient solid?fluid coexistence phase.', '1280px-Leidenfrost_droplet.png', 'Znanost', 0),
(10, '02.06.2021.', 'Stone skipping explained', 'As a boy I spent many hours skipping stones across the surface of the water on the shore of Lake Michigan. The challenge was to get as many skips or as much distance as possible. Zero skips was a bust. One or two skips was disappointing, three or four skips was mediocre, and six or more skips was exhilarating.', 'An idealized, spin-stabilized skipping stone in flight. The radius of the stone is R, and the thickness is h. The velocity of the stone in air is v. The tilt angle of the stone from the horizontal is ?. The flight path angle is ? = tan?1(vy/vx), with ? < 0 for a falling stone and ? > 0 for a rising stone. Air resistance creates drag force, FD, which opposes forward motion. (b) An idealized, spin-stabilized skipping stone in the water. Here the stone is moving into the water at velocity, v. The reactive force, Fn, acting on the bottom surface of the stone pushes upward with force Fn cos(?) and backward with force Fn sin(?). The stone displaces water when moving normal to its bottom surface through distance ?d. A free slip condition at the water-stone boundary means that there is no friction during movement over distance, ?s, perpendicular to Fn.', 'Stoneskipping.jpg', 'Znanost', 0),
(13, '02.06.2021.', 'Escape velocity', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare sollicitudin efficitur. Pellentesque eu hendrerit nisi. Sed tempus metus est. Aliquam erat volutpat. Vivamus ac tincidunt lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam enim sapien, suscipit sit amet tortor ornare, egestas tristique enim. Donec vitae sem efficitur, semper nibh id, eleifend diam. In aliquet nunc a sem tincidunt, vitae tristique ante interdum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis id ipsum vitae sagittis. Praesent porttitor egestas eleifend. Vivamus ut nisl eu mi commodo faucibus. Pellentesque viverra neque leo, et dignissim neque pretium quis. Proin pellentesque ligula in dapibus vulputate. Sed sed eros non enim finibus consectetur. Phasellus suscipit enim vel nibh pulvinar posuere. Fusce mollis metus ut dictum sagittis.\r\n\r\nDuis fringilla velit eu massa sodales, ac vehicula lacus porttitor. Vivamus nec magna aliquet, fermentum orci vel, suscipit lorem. Fusce imperdiet ultrices mi, quis porta velit laoreet nec. Praesent eget porta sem. Quisque quis lorem nec sem ultricies sagittis a vitae augue. Suspendisse potenti. Aenean tristique, turpis id tempor pulvinar, risus dolor accumsan ante, in facilisis magna risus at ligula. Nullam dolor lectus, pretium quis purus non, imperdiet tempus quam. Maecenas aliquet, lorem at vestibulum maximus, metus nisl viverra leo, vitae placerat elit quam eget libero. Vivamus suscipit eu mauris vel hendrerit. Sed turpis magna, pretium venenatis massa non, pharetra tempor elit. Fusce condimentum eros iaculis, volutpat orci at, condimentum sem. Vestibulum ac varius nisl, tempus volutpat lacus. Sed quis felis aliquet, efficitur tellus ac, molestie orci.', '180px-Angular_Parameters_of_Elliptical_Orbit.png', 'Znanost', 0),
(14, '02.06.2021.', 'Lo-fi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus erat at ultrices imperdiet. Integer at orci ut magna dictum venenatis eu sit amet erat. Vivamus in libero sit amet est consectetur aliquam at vitae sem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce neque est, condimentum eu ligula vel, rutrum sollicitudin libero. Duis sodales lectus eu purus aliquam ultricies. Morbi vel odio eu turpis blandit molestie. Nam eleifend, lacus quis scelerisque blandit, sem tellus tempor metus, at consectetur sem nunc vel lacus. Praesent mollis ac mi eu faucibus. Cras eleifend commodo nulla. Suspendisse fermentum scelerisque risus, et consectetur quam sodales at. Duis vestibulum ut quam a vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum. Phasellus dapibus eros id tellus maximus, eget consequat sem condimentum. Phasellus lobortis ligula id urna placerat, in vestibulum orci malesuada. Mauris pharetra, erat ut placerat rhoncus, enim enim condimentum quam, ac lobortis nulla neque ut mi. Donec mollis dui felis, eget molestie nibh pretium eget. Quisque sit amet augue mattis, ultrices purus et, fringilla turpis.\r\n\r\nSed fringilla rutrum est in pharetra. Sed accumsan aliquet leo. Donec ac egestas est. Fusce id dolor velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed accumsan ante. Nullam quis augue sit amet nulla mollis pulvinar in eget orci. Nulla sapien purus, congue a facilisis ac, facilisis vel dui.', 'lofi-girl.jpg', 'Glazba', 0),
(15, '02.06.2021.', 'Gorilaz Song Machine', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum. Phasellus dapibus eros id tellus maximus, eget consequat sem condimentum. Phasellus lobortis ligula id urna placerat, in vestibulum orci malesuada. Mauris pharetra, erat ut placerat rhoncus, enim enim condimentum quam, ac lobortis nulla neque ut mi. Donec mollis dui felis, eget molestie nibh pretium eget. Quisque sit amet augue mattis, ultrices purus et, fringilla turpis.\r\n\r\nSed fringilla rutrum est in pharetra. Sed accumsan aliquet leo. Donec ac egestas est. Fusce id dolor velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed accumsan ante. Nullam quis augue sit amet nulla mollis pulvinar in eget orci. Nulla sapien purus, congue a facilisis ac, facilisis vel dui.', 'Gorilaz_Song_Machine.jpg', 'Glazba', 0),
(16, '02.06.2021.', 'Blind Guardian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum. Phasellus dapibus eros id tellus maximus, eget consequat sem condimentum. Phasellus lobortis ligula id urna placerat, in vestibulum orci malesuada. Mauris pharetra, erat ut placerat rhoncus, enim enim condimentum quam, ac lobortis nulla neque ut mi. Donec mollis dui felis, eget molestie nibh pretium eget. Quisque sit amet augue mattis, ultrices purus et, fringilla turpis.\r\n\r\nSed fringilla rutrum est in pharetra. Sed accumsan aliquet leo. Donec ac egestas est. Fusce id dolor velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed accumsan ante. Nullam quis augue sit amet nulla mollis pulvinar in eget orci. Nulla sapien purus, congue a facilisis ac, facilisis vel dui.', 'BlindGuardian.jpg', 'Glazba', 0),
(17, '02.06.2021.', 'Fleetwood Mac', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum. Phasellus dapibus eros id tellus maximus, eget consequat sem condimentum. Phasellus lobortis ligula id urna placerat, in vestibulum orci malesuada. Mauris pharetra, erat ut placerat rhoncus, enim enim condimentum quam, ac lobortis nulla neque ut mi. Donec mollis dui felis, eget molestie nibh pretium eget. Quisque sit amet augue mattis, ultrices purus et, fringilla turpis.\r\n\r\nSed fringilla rutrum est in pharetra. Sed accumsan aliquet leo. Donec ac egestas est. Fusce id dolor velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed accumsan ante. Nullam quis augue sit amet nulla mollis pulvinar in eget orci. Nulla sapien purus, congue a facilisis ac, facilisis vel dui.', 'FleetwoodMac.jpg', 'Glazba', 0),
(18, '02.06.2021.', 'Jinx', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum. Phasellus dapibus eros id tellus maximus, eget consequat sem condimentum. Phasellus lobortis ligula id urna placerat, in vestibulum orci malesuada. Mauris pharetra, erat ut placerat rhoncus, enim enim condimentum quam, ac lobortis nulla neque ut mi. Donec mollis dui felis, eget molestie nibh pretium eget. Quisque sit amet augue mattis, ultrices purus et, fringilla turpis.\r\n\r\nSed fringilla rutrum est in pharetra. Sed accumsan aliquet leo. Donec ac egestas est. Fusce id dolor velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed accumsan ante. Nullam quis augue sit amet nulla mollis pulvinar in eget orci. Nulla sapien purus, congue a facilisis ac, facilisis vel dui.', 'Jinx.jpg', 'Glazba', 0),
(19, '02.06.2021.', 'Futurama Body Swap Theorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis lobortis efficitur. Proin rutrum arcu id purus scelerisque rhoncus. Nam at arcu purus. Cras pretium tellus sit amet libero mollis, cursus viverra leo lobortis. Ut vel massa neque. Nulla sed accumsan orci. Mauris vitae augue et metus viverra placerat. Suspendisse scelerisque nisi vel varius consectetur. Praesent non auctor nisl, in imperdiet turpis. Duis vitae varius metus. Nunc gravida nunc vel commodo bibendum. Phasellus dapibus eros id tellus maximus, eget consequat sem condimentum. Phasellus lobortis ligula id urna placerat, in vestibulum orci malesuada. Mauris pharetra, erat ut placerat rhoncus, enim enim condimentum quam, ac lobortis nulla neque ut mi. Donec mollis dui felis, eget molestie nibh pretium eget. Quisque sit amet augue mattis, ultrices purus et, fringilla turpis.\r\n\r\nSed fringilla rutrum est in pharetra. Sed accumsan aliquet leo. Donec ac egestas est. Fusce id dolor velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed accumsan ante. Nullam quis augue sit amet nulla mollis pulvinar in eget orci. Nulla sapien purus, congue a facilisis ac, facilisis vel dui.', 'the_prisoner_of_benda_globetrotters.jpg', 'Znanost', 1),
(27, '03.06.2021.', 'Puddles Pity Party', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus malesuada tortor, nec dictum felis vestibulum non. Fusce aliquam eget lorem eu molestie.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus malesuada tortor, nec dictum felis vestibulum non. Fusce aliquam eget lorem eu molestie. Donec eu ipsum vitae sem imperdiet ullamcorper vitae quis orci. Aliquam sapien nunc, aliquet et condimentum eu, volutpat ac neque. Praesent eget nunc non sapien tempor consectetur et quis magna. Praesent eu tortor consectetur, blandit augue nec, auctor quam. In vitae nulla rutrum, tempor nibh et, fermentum velit. Nunc augue nibh, interdum in ex eu, porttitor commodo libero. Mauris eleifend quam et lectus dignissim malesuada. Curabitur ac laoreet massa. Pellentesque pulvinar dictum erat, vitae egestas risus ornare sit amet. Curabitur dapibus ut odio a luctus. Duis sagittis euismod suscipit. Etiam tincidunt lorem sed ultricies placerat. Morbi sed consequat ligula. ', 'puddles_pity_party.jpg', 'Glazba', 1),
(28, '04.06.2021.', 'Berserk author passed away', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'berserk.jpg', 'Umjetnost', 1),
(29, '04.06.2021.', 'The Dead South', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus at lorem id congue. Suspendisse eget sapien nec enim egestas posuere. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus at lorem id congue. Suspendisse eget sapien nec enim egestas posuere. Praesent ultricies orci facilisis diam lacinia ultrices non nec velit. In hac habitasse platea dictumst. Donec lacinia nisl non egestas efficitur. Quisque ut porta risus. Sed tristique rhoncus pretium. Nullam quis ligula pretium, consequat mi quis, finibus purus. Nullam varius turpis non massa mattis, ut placerat sapien auctor. ', 'DeadSouth.jpg', 'Glazba', 0);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(64) COLLATE utf8mb4_croatian_ci NOT NULL,
  `prezime` varchar(64) COLLATE utf8mb4_croatian_ci NOT NULL,
  `korisnicko_ime` varchar(64) COLLATE utf8mb4_croatian_ci NOT NULL,
  `lozinka` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(3, 'Ivo', 'Ivić', 'admin', '$2y$10$efkQc1y6GUzxECxg2/fR/ubk393QPPd8eAY/wAWQnP9rJyn410bDK', 1),
(5, 'Ivan', 'Kovačić', 'user', '$2y$10$CVnHxCnlJ9nwFJg4sppB8eRnFljoBe6uz7A33q0/e4zudqn8vB1ja', 0),
(7, 'Maria', 'Marić', 'user2', '$2y$10$6bnLV6PY512X8QQPbiM9le54A4qDKiqNtsvnIgyo4S6cMy0Ssa2yG', 0),
(8, 'Ivan', 'Kovać', 'blank', '$2y$10$t8dUxoQesKbz88NTHlOzyOU6YiapY1anFTuuHXK3defeYbSxWErw.', 0),
(9, 'John', 'Smith', 'korisnik', '$2y$10$et9nAHOzRaWiqsRGUDDw7.P0kIrmrGNgJ7QG1//98O2lKB/t.p.62', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanci`
--
ALTER TABLE `clanci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanci`
--
ALTER TABLE `clanci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
