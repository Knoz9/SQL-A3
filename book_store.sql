-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 09 mars 2023 kl 02:11
-- Serverversion: 10.4.27-MariaDB
-- PHP-version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `book_store`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `books`
--

CREATE TABLE `books` (
  `isbn` char(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `title` varchar(128) NOT NULL,
  `price` float NOT NULL,
  `subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `books`
--

INSERT INTO `books` (`isbn`, `author`, `title`, `price`, `subject`) VALUES
('120594757', 'Neal G. Anderson', 'Practical Process Research and  Development', 89.95, 'SCIENCE'),
('120848104', 'Les Beletsky', 'Costa Rica: The Ecotraveller Wildlife Guide', 30, 'GENERAL'),
('125535600', 'GM Phillips and PJ Taylor', 'Theory and Applications of Numerical Analysis', 75.25, 'SCIENCE'),
('130264857', 'Jan Fair and Sadie Bragg', 'Algebra 1', 54.8, 'SCIENCE'),
('130273635', 'Bruce Eckel', 'Thinking in Java', 35.99, 'COMPUTER SCIENCE'),
('130819735', 'Jame Laudon', 'Essentials of management', 75, 'GENERAL'),
('134897250', ' Bernd Bruegge and Alan H. Dutoit', 'Object Oriented Software Engineering, Conquering Complex and Changing Systems', 45, 'COMPUTER SCIENCE'),
('136603904', 'Irvine, Kip R.', 'Assembly Language for Intel-Based Computers', 72.95, 'COMPUTER SCIENCE'),
('137566107', 'Peter Abel', 'IBM PC Assembly Language and Programming, Fourth Edition', 63.95, 'COMPUTER SCIENCE'),
('138613370', 'Jeffrey D. Ullman', 'A First Course in Database Systems', 65, 'COMPUTER SCIENCE'),
('140514523', 'Richard Cook', 'The Penguin Guide to Jazz on C.d (Penguin Guide to Jazz on Cd, 5th Ed)', 19.85, 'GENERAL'),
('151004714', 'Claire Messud', 'The Last Life', 24, 'FICTION'),
('1552047210', 'James Herriot', 'James Herriots Favorite Dog Stories', 29.99, 'FICTION'),
('1557044287', 'Ridley Scott', 'Gladiator', 26.36, 'FICTION'),
('156007088', 'John Lewis', 'Walking with the Wind', 15, 'GENERAL'),
('156007754', 'Jose Saramago, Giovanni Pontiero', 'Blindness', 14, 'FICTION'),
('1565922840', 'Randal Schwartz Tom Christiansen Larry Wall', 'Learning Perl', 23.96, 'COMPUTER SCIENCE'),
('1565926099', 'David Blank-Edelman', 'Perl for System Administration', 27.96, 'COMPUTER SCIENCE'),
('1565926269', 'Steven Roman', 'Access Database Design And Programming', 27.01, 'COMPUTER SCIENCE'),
('1565927699', 'Rasmus Lerdorf', 'PHP Pocket Reference', 8.95, 'COMPUTER SCIENCE'),
('1566912296', 'Rick Steves', 'Rick Steve Italy 2001', 17.95, 'GENERAL'),
('1573225312', 'Chang-Rae Lee', 'Native Speaker', 12.95, 'FICTION'),
('1576572862', 'Nancy Parent', 'The Little Green Fish', 6.95, 'CHILDREN'),
('1576573842', 'Nancy Parent', 'Santa\'s Workshop', 5.95, 'CHILDREN'),
('1581950098', 'Kurt Johnson, Steven L. Coates', 'Nabokovs Blues : The Scientific Odyssey of a Literary Genius', 27, 'FICTION'),
('1584500492', 'DeLoura, Mark', 'Game Programming Gems', 69.95, 'COMPUTER SCIENCE'),
('1586480103', 'Andy Rooney and Tom Brokaw', 'MyWar', 15, 'GENERAL'),
('1861003730', 'Chris Lea Wankyu Choi Allan Kent Ganesh Prasad Chris Ullman', 'Beginning PHP4', 31.99, 'COMPUTER SCIENCE'),
('1864364432', 'John Ashton', 'In Six Days : Why 50 Scientists Choose to Believe in Creation', 14.95, 'SCIENCE'),
('1878529234', 'Craig Clunas', 'Chinese Furniture', 45, 'GENERAL'),
('1884133258', 'Jamsa Klander', 'C/C++ programmer\'s bible', 49.99, 'COMPUTER SCIENCE'),
('1902618351', 'Mei Lim (Illustrator)', 'My TV is Alive!: Real Life Robots, Future Computers and Clones', 4.95, 'COMPUTER SCIENCE'),
('1930110006', 'David Cross', 'Data Munging with Perl', 29.56, 'COMPUTER SCIENCE'),
('198503652', 'Susan J. Blackmore', 'The Meme Machine', 20, 'FICTION'),
('201379260', 'Nicolai M. Josuttis', 'The C++ Standard Library : A Tutorial and Reference', 69.95, 'COMPUTER SCIENCE'),
('201612585', 'Rajshekhar Sunderraman', 'Oracle8 Programming a primer', 29.99, 'COMPUTER SCIENCE'),
('201615622', 'Herb Sutter', 'Exceptional C++: 47 Engineering Puzzles, Programming Problems', 59.95, 'COMPUTER SCIENCE'),
('201615711', 'Lincoln D Stein', 'Network Programming with Perl', 39.95, 'COMPUTER SCIENCE'),
('201633715', 'Scott Meyers', 'More Effective C++ : 35 New Ways to Improve Your Programs and Designs ', 39.95, 'COMPUTER SCIENCE'),
('201634422', 'S Keshav', 'An Engineering Approach to computer networks', 49.95, 'COMPUTER SCIENCE'),
('201657836', 'Martin Fowler with Kendall Scott', 'UML Distilled, Second Edition', 29.95, 'COMPUTER SCIENCE'),
('201700735', 'Bjarne Stroustrup', 'The C++ Programming Language Special Edition', 59.95, 'COMPUTER SCIENCE'),
('201709287', 'C.J. Date, Hugh Darwen', 'Foundation for Future Database Systems: The Third Manifesto', 39.95, 'COMPUTER SCIENCE'),
('256228779', 'Gilbert churchill, Paul Petter', 'Marketing: Creating Value for Customers', 60.25, 'GENERAL'),
('262041642', 'Marco Dorigo, Marco Colombetti', 'Robot Shaping: An Experiment in Behavior Engineering', 42, 'COMPUTER SCIENCE'),
('262133822', 'Faith D Aluisio', 'Robo Sapiens: Evolution of a New Species', 23.96, 'COMPUTER SCIENCE'),
('262181916', 'Santiago. Ramon Y Cajal', 'Advice for a Young Investigator', 21.23, 'SCIENCE'),
('30059380', 'Douglas A. Skooq', 'Fundamentals of Analytical Chemistry', 118.5, 'SCIENCE'),
('30303370', 'William Rife', 'Essentials of Chemistry', 79.55, 'SCIENCE'),
('30615372', 'Colin M. Turnbull', 'The Mbuti Pygmies', 15, 'GENERAL'),
('312135033', 'Carolly Erickson', 'Great Catherine', 13.56, 'GENERAL'),
('312965095', 'Kathleen Kane', 'This Time for Keeps', 5.99, 'FICTION'),
('314129499', 'Welch Gruhlt', 'American Government', 41.99, 'GENERAL'),
('316154075', 'Michael Connelly', 'A Darkness More than Night', 15.57, 'FICTION'),
('316695262', 'George P. Pelecanos', 'Right as Rain', 19.96, 'FICTION'),
('316769487', 'Salinger, J.D.', 'Catcher in the Rye', 5.99, 'FICTION'),
('345298063', 'Robert K Massie', 'Peter the Great : His Life and World', 11.2, 'GENERAL'),
('345313860', 'Anne Rice', 'The vampire lestat', 6.99, 'FICTION'),
('345337662', 'Anne Rice', 'Interview with a vampire', 6.99, 'FICTION'),
('345350499', 'Marion Zimmer Bradley', 'The mists of avalon', 12.95, 'FICTION'),
('345370775', 'Michael Crichton', 'Jurassic Park', 6.99, 'FICTION'),
('345377648', 'Anne Rice', 'Lasher', 14, 'FICTION'),
('345384466', ' Anne Rice', 'The Witching Hour', 7.99, 'FICTION'),
('345384754', 'Anne Rice', 'The tale of the body thief', 6.99, 'FICTION'),
('345417623', 'Michael Crichton', 'Timeline', 7.99, 'FICTION'),
('345419758', 'Mass Market', 'Air Force One Has Landed', 5.99, 'FICTION'),
('345438310', 'Robert K Massie', 'Nicholas and Alexandra', 14.4, 'GENERAL'),
('374141231', 'Ian Wilmut, Colin Tudge, Keith Campbell ', 'The Second Creation: Dolly and the Age of Biological Control', 21.6, 'FICTION'),
('375400818', 'Robert Kimball ', 'Reading Lyrics', 31.6, 'GENERAL'),
('375411644', 'Gurcharan Das', 'India Unbound', 5, 'GENERAL'),
('375502025', 'Tom Brokaw', 'The Greatest Generation', 10, 'GENERAL'),
('375810609', 'Jean DE Brunhoff', 'Bonjour Babar', 29.95, 'CHILDREN'),
('380711154', 'Tracy Kidder', 'The Soul of a New Machine', 12.5, 'FICTION'),
('385326653', 'David Almond', 'Kits Wilderness', 56, 'CHILDREN'),
('385479565', 'Richard Preston', 'The Hot Zone', 7.99, 'SCIENCE'),
('387987010', 'Peter Douglas Ward', 'Rare Earth: Why Complex Life is Uncommon in the Universe', 34.34, 'SCIENCE'),
('393314251', 'Stephen Jay Gould', 'The Mismeasure of Man', 15.95, 'FICTION'),
('393316009', 'Andrea Barrett', 'Ship Fever', 12, 'FICTION'),
('395851580', 'James Marshall', 'George and Martha the complete stories of two best friends', 25, 'CHILDREN'),
('399145633', 'Clancy, Tom', 'Bear and the Dragon, The', 28.95, 'FICTION'),
('399146652', 'Lilian Jackson Braun', 'The Cat Who Smelled a Rat ', 14.37, 'FICTION'),
('399147020', 'Nevada Barr', 'Blood Lure ', 14.97, 'FICTION'),
('399501487', 'Golding, William Gerald', 'Lord of the Flies: A Novel', 6.95, 'FICTION'),
('425101076', ' Tom Clancy', 'Red Storm Rising', 7.99, 'FICTION'),
('425133540', ' Tom Clancy', 'The Sum of All Fears', 7.99, 'FICTION'),
('425143325', ' Tom Clancy', 'Without Remorse', 7.99, 'FICTION'),
('425147584', ' Tom Clancy', 'Debt Of Honor', 7.99, 'FICTION'),
('439064864', 'J. K. Rowling', 'Harry Potter and the chambers of secrets', 17.95, 'CHILDREN'),
('439136350', 'J. K. Rowling', 'Harry Potter and the chamber of secrets', 19.95, 'CHILDREN'),
('439139597', 'J. K. Rowling', 'Harry Potter and the goblet of fire', 25.95, 'CHILDREN'),
('440413729', 'Ruth White', 'Belle Prater\'s Boy', 4, 'CHILDREN'),
('446310783', 'Lee, Harper', 'To Kill a Mockingbird', 6.99, 'FICTION'),
('449202496', 'Erich Maria Remarque', 'All Quiet on the Western Front', 2.95, 'FICTION'),
('449911942', 'John Updike', 'Rabbit at Rest', 12.95, 'FICTION'),
('452272971', 'Sebastien Japrisot, Linda Coverdale', 'A Very Long Engagement', 14, 'FICTION'),
('465041752', 'Frans de Waal', 'The Ape and the Sushi Master', 20.8, 'FICTION'),
('471105597', 'Halliday, Resnick, and Walker', 'Fundamentals of Physics Extended', 99.95, 'SCIENCE'),
('471135615', 'Robert Zubrin', 'Islands In the Sky: Bold New Ideas for Colonizing Space', 13.45, 'FICTION'),
('471169196', 'Kimmel Weygandt', 'Financial Accounting: tools for business decision making', 81.99, 'GENERAL'),
('471534781', 'Richard M. Felder', 'Elementary Principles of Chemical Processes', 111.95, 'SCIENCE'),
('471587192', 'Garret J.Etgen', 'SALAS and HILLES CALCULUS', 84.5, 'SCIENCE'),
('471597619', 'Gary D. Christian', 'Analytical Chemistry', 103, 'SCIENCE'),
('505523078', 'Ann Lawrence', 'Virtual Heaven', 5.99, 'FICTION'),
('517707950', 'Esquivel, Laura', 'The Law of Love', 79.98, 'Romance'),
('528838180', 'Ran McNally', 'Coast-to-Coast Games', 3.95, 'CHILDREN'),
('531164497', 'Ann O. Squire', 'Spiders of North America', 6.95, 'SCIENCE'),
('534368018', 'Bronson, Gary J.', 'A First Book of C++: From Here to There', 60.95, 'COMPUTER SCIENCE'),
('534944469', 'Susanna S. Epp', 'Discrete Mathematics with Applications', 64.65, 'SCIENCE'),
('553102370', 'Michael Crichton', 'Eaters of the Dead', 1.5, 'FICTION'),
('553283936', 'Frederick Forsyth', 'The Negotiator', 5.95, 'FICTION'),
('553575538', 'Kay Hooper', 'Stealing Shadows', 6.5, 'FICTION'),
('553577476', 'Leslie Lafoy', 'Lady Reckless', 5.5, 'FICTION'),
('590262540', 'K.A. Applegate', 'The Threat', 4.99, 'FICTION'),
('590494368', 'K.A. Applegate', 'The Underground', 4.99, 'FICTION'),
('590494414', 'K.A. Applegate', 'The Decision', 4.99, 'FICTION'),
('590496379', 'K.A. Applegate', 'The Discovery', 4.99, 'FICTION'),
('590956159', 'K.A. Applegate', 'In the Time of Dinosausrs', 4.99, 'FICTION'),
('596000278', 'Larry Wall Tom Christiansen Jon Orwant', 'Programming Perl', 39.96, 'COMPUTER SCIENCE'),
('60287659', 'Geraldine McCaughrean', 'The Stones Are Hatching', 17, 'CHILDREN'),
('60393645', 'Marilu Henner and Lorin Henner', 'Healthy Life Kitchen', 20.8, 'GENERAL'),
('60930497', 'Kenneth R. Miller', 'Finding Darwin God:  Scientists Search for Common Ground', 58.95, 'SCIENCE'),
('60959290', 'Colin Thubron', 'Among the Russians', 11.2, 'GENERAL'),
('609607995', 'Edwin Black', 'IBM and the Holocaust', 24, 'GENERAL'),
('618056777', 'Jane Goodall', 'Through a Window', 14, 'SCIENCE'),
('625934605', 'Janet Podleski, Greta Podleski, Ted Martin', 'Crazy Plates', 17.95, 'GENERAL'),
('669076791', 'James Wilson', 'American Government', 39.95, 'GENERAL'),
('671007675', ' V.C. Andrews', 'Rain', 7.99, 'FICTION'),
('671032658', 'King, Stephen', 'Green Mile, The', 7.99, 'FICTION'),
('671047310', 'Vince Flynn', 'The Third Option', 24.95, 'FICTION'),
('671880756', 'Thomas Hoving', 'Making the Mummies Dance', 21.95, 'GENERAL'),
('672314800', 'Dave Taylor and James C. Armstrong', 'Sam\'s Teach Yourself UNIX in 24 Hours, Second Edition', 19.99, 'COMPUTER SCIENCE'),
('672319241', 'Sterling Hughes Andrei Zmievski', 'PHP Developers Cookbook', 31.99, 'COMPUTER SCIENCE'),
('674003306', 'Robert Service', 'Lenin: A Biography', 28, 'GENERAL'),
('679445512', 'Geoffrey C. Ward', 'Jazz : A History of American Music', 52, 'GENERAL'),
('679766743', 'Alice Munro', 'Selected Stories', 16, 'FICTION'),
('684801523', 'Fitzgerald, F. Scott', 'Great Gatsby', 11.95, 'FICTION'),
('684818701', 'Maria D. Guarnaschelli', 'The New Joy of Cooking', 56, 'GENERAL'),
('684856093', 'Sean Covey', 'The 7 Habits', 12, 'CHILDREN'),
('684869519', 'Wendy Orange', 'Coming Home To Jerusalem: A Personal Journey', 25, 'GENERAL'),
('688069711', 'Gary Selden', 'The Body Electric: Electromagnetism and the Foundation of Life', 13, 'SCIENCE'),
('688127371', 'James A. Peterson', 'Fish and Shellfish', 32, 'GENERAL'),
('688160999', 'Janine M. Benyus', 'Biomimicry : Innovation Inspired by Nature', 14, 'SCIENCE'),
('688161995', 'Chris Schlesinger', 'How to Cook Meat', 28, 'GENERAL'),
('688163165', 'Dennis Lehane', 'Mystic River', 15, 'FICTION'),
('689813813', 'Patricia Mullins', 'One Horse Waiting for Me', 16, 'FICTION'),
('689829418', 'Preiss-Glasser', 'Totally the Messiest', 12, 'CHILDREN'),
('689829531', 'Ian Falconer', 'Olivia', 12.8, 'CHILDREN'),
('689836015', 'E. L. Konigsburg', 'Silent to the Bone', 107, 'CHILDREN'),
('70121430', 'Thomas H. Cormen, Charles E. Leiserson, and Ronald L. Rivest', ' Introduction to Algorithms', 69.95, 'COMPUTER SCIENCE'),
('70349096', 'Henry Z. Kister', 'Distillation Design', 79.95, 'SCIENCE'),
('70498415', 'Robert H. Perry', 'Perrys Chemical Engineers Handbook', 150, 'SCIENCE'),
('70571864', 'Gershon J. Shugar', 'Chemical Technicians Ready Reference Handbook', 89.95, 'SCIENCE'),
('71354190', 'Peter Lane Taylor', 'Science at the Extreme: Scientists on the Cutting Edge of Discovery', 29.95, 'SCIENCE'),
('716736381', 'Niles Eldredge', 'The Triumph of Evolution...And the Failure of Creationism', 48.95, 'SCIENCE'),
('72127317', 'Blake Schwendiman', 'PHP 4 Developers Guide', 47.99, 'COMPUTER SCIENCE'),
('72127481', 'Joel Scambray', 'HACKING EXPOSED: NETWORK SECURITY SECRETS AND SOLUTIONS', 31.99, 'COMPUTER SCIENCE'),
('737800033', ' John H. Johnson', 'Every Wall a ladder', 7.95, 'GENERAL'),
('738201960', 'Christopher Wills', 'The Spark of Life : Darwin and the Primeval Soup', 72.34, 'SCIENCE'),
('738204374', 'Steven M. Wise', 'Rattling the Cage: Toward Legal Rights for Animals', 17.5, 'FICTION'),
('743202104', 'M. Becker, Marion Becker, Ethan Becker', 'Joy of Cooking Soups and Stews', 15.96, 'GENERAL'),
('743215052', 'Le Carre, John', 'The Constant Gardener', 28, 'Thrillers'),
('750650869', 'David Howe', 'Data Analysis for Database Design', 32.95, 'COMPUTER SCIENCE'),
('760049254', 'Philip Pratt', 'The Concepts of Database', 26, 'COMPUTER SCIENCE'),
('761117199', 'Ann Byin and Anthony Loew', 'The Cake Mix Doctor', 13.45, 'GENERAL'),
('764546216', 'Murdock, Kelly L.', '3D Studio Max R3', 49.99, 'COMPUTER SCIENCE'),
('764547161', 'Tim Converse Joyce Park', 'PHP4 Bible', 27.99, 'COMPUTER SCIENCE'),
('767903854', 'Bill Bryson', 'In a Sunburned Country', 25, 'GENERAL'),
('78823927', 'Herb Schildt', 'Teach yourself C++', 27.99, 'COMPUTER SCIENCE'),
('78823978', 'Thomas Powell', 'The complete reference HTML', 39.99, 'COMPUTER SCIENCE'),
('789305003', 'Los Angeles County Museum of Art', 'California Pop-Up Book', 36, 'GENERAL'),
('789404257', 'Various', 'Eyewitness Travel Guides: Italy', 29.95, 'GENERAL'),
('792393651', 'Jonalthan H. Connell, Sridhar Mahadevan (Editor)', 'Robot Learning', 120, 'COMPUTER SCIENCE'),
('805057579', 'Thomas A. Bass', 'The Predictors', 15, 'SCIENCE'),
('805317554', 'Elmasri and Navathe', 'Fundamentals of Database Systems', 75.95, 'COMPUTER SCIENCE'),
('807825859', 'Ann Hawthorne', 'Not Afraid of Flavor', 22, 'GENERAL'),
('809299674', 'Adrian Wood', 'The Second World War in Color', 23.67, 'GENERAL'),
('810936852', 'Peter H Hassrick ', 'The Georgia O_Keeffe Museum', 28, 'GENERAL'),
('810961695', 'Edward Steichen', 'The Family of Man', 15.96, 'GENERAL'),
('811213668', 'W. G. Sebald, Michael Hulse', 'The Emigrants', 10.95, 'FICTION'),
('811716937', 'Jerry Predika', 'The Sausage Making Cookbook', 14.36, 'GENERAL'),
('811826848', 'The Beatles', 'Beatles Anthology, The', 59.95, 'GENERAL'),
('812093119', 'Martin Sternstein', 'Statistics', 19.95, 'SCIENCE'),
('812520610', ' Brian Lumley', 'Blood Brothers', 7.99, 'FICTION'),
('812520629', ' Brian Lumley', 'The Last Aerie', 7.99, 'FICTION'),
('813527406', 'Iris Fry', 'The Emergence of Life on Earth : A Historical and Scientific Overview', 64.34, 'SCIENCE'),
('821762559', 'Quinn Taylor Evans', 'Daughter of Camelot', 5.99, 'FICTION'),
('835120355', 'Liu Zongen', 'Two Year in the Melting pot', 12.99, 'GENERAL'),
('838479022', 'Elizabeth Byleen', 'Looking Ahead', 31.95, 'GENERAL'),
('849323754', 'Hooman H. Rashidi', 'Bioinformatics Basics Applications in Biological Science and Medicine', 69.95, 'SCIENCE'),
('850668093', 'Mansour Rahimi (Editor), Waldemar Karwowski (Editor)', 'Human-Robot Interaction', 110, 'COMPUTER SCIENCE'),
('864426429', 'Kim Grant', 'Lonely Planet Boston', 15.99, 'GENERAL'),
('870212850', ' Tom Clancy', 'The Hunt For Red October', 27.95, 'FICTION'),
('874779758', 'Robert Zubrin', 'Entering Space', 19.96, 'FICTION'),
('882664778', 'Charles G. Reavis, ', 'Home Sausage Making', 11.96, 'GENERAL'),
('887251714', 'Jim Cottrell', 'Skiing Everyone', 10, 'GENERAL'),
('910146691', 'Allen DE Hart', 'North Carolina Hiking Trails', 14.95, 'GENERAL'),
('911625291', 'Steve Eckols', 'IMS for the Cobol Programmer', 36.5, 'COMPUTER SCIENCE'),
('911625453', 'Doug Lowe', 'VSAM for the Cobol Programmer', 27.5, 'COMPUTER SCIENCE'),
('911625593', 'Steve Eckols', 'DB2 for the Cobol Programmer', 36.5, 'COMPUTER SCIENCE'),
('911625607', 'Doug Lowe', 'CICS for the Cobol Programmer', 36.5, 'COMPUTER SCIENCE'),
('911625852', 'Doug Lowe', 'MVS JCL for the Cobol Programmer', 36.5, 'COMPUTER SCIENCE'),
('932813739', 'David Hatcher Childress', 'Technology of the Gods : The Incredible Sciences of the Ancients', 16.95, 'SCIENCE'),
('935039031', 'Michael Brown', 'Streetwise Manhattan', 5.95, 'GENERAL'),
('935112510', 'Clarke, Greg', 'Golf Rules Illustrated', 19.95, 'SPORTS'),
('935702616', 'Roger L. Dekock', 'Chemical Structure and Bonding', 36.55, 'SCIENCE'),
('936184388', 'Carl Tremblay', 'The Best Recipe', 32, 'GENERAL'),
('961470151', 'Mark Levine', 'The Jazz Piano Book', 56, 'GENERAL'),
('961549890', 'Lenore W. Horowitz', 'Kauai Underground Guide', 12.95, 'GENERAL'),
('962477060', 'Bill Edwards', 'Fretboard Logic SE: Volumes Combined', 20.85, 'GENERAL'),
('9625934605', 'Ryuichi Yoshii', 'Sushi', 14.36, 'GENERAL'),
('966625307', 'Toni Polancy', 'So You Want to Live in Hawaii', 19.95, 'GENERAL'),
('967174805', 'Carl R. Sam and Jean Stoick', 'Stranger in the Woods', 15.96, 'CHILDREN'),
('967697603', 'Mercedes Lee ', 'Seafood Lovers Almanac', 19.95, 'GENERAL');

-- --------------------------------------------------------

--
-- Tabellstruktur `cart`
--

CREATE TABLE `cart` (
  `userid` int(11) NOT NULL,
  `isbn` char(10) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `cart`
--

INSERT INTO `cart` (`userid`, `isbn`, `qty`) VALUES
(1, '1584500492', 20);

-- --------------------------------------------------------

--
-- Tabellstruktur `members`
--

CREATE TABLE `members` (
  `userid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip` int(11) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `creditcardtype` varchar(10) DEFAULT NULL,
  `creditcardnumber` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `members`
--

INSERT INTO `members` (`userid`, `fname`, `lname`, `address`, `city`, `state`, `zip`, `phone`, `email`, `password`, `creditcardtype`, `creditcardnumber`) VALUES
(1, 'd', 'd', 'd', 'd', 'd', 0, 'd', 'd', 'd', NULL, NULL),
(4, 'f', 'f', 'f', 'f', 'f', 0, 'f', 'f', 'f', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellstruktur `odetails`
--

CREATE TABLE `odetails` (
  `ono` int(11) NOT NULL,
  `isbn` char(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `odetails`
--

INSERT INTO `odetails` (`ono`, `isbn`, `qty`, `price`) VALUES
(11, '130273635', 2, 71.98),
(12, '1565922840', 2, 47.92),
(13, '134897250', 1, 45);

-- --------------------------------------------------------

--
-- Tabellstruktur `orders`
--

CREATE TABLE `orders` (
  `userid` int(11) NOT NULL,
  `ono` int(11) NOT NULL,
  `received` date DEFAULT NULL,
  `shipped` date DEFAULT NULL,
  `shipAddress` varchar(50) DEFAULT NULL,
  `shipCity` varchar(30) DEFAULT NULL,
  `shipState` varchar(20) DEFAULT NULL,
  `shipZip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `orders`
--

INSERT INTO `orders` (`userid`, `ono`, `received`, `shipped`, `shipAddress`, `shipCity`, `shipState`, `shipZip`) VALUES
(1, 11, '2023-03-09', NULL, 'd', 'd', 'd', 0),
(1, 12, '2023-03-09', NULL, 'd', 'd', 'd', 0),
(1, 13, '2023-03-09', NULL, 'd', 'd', 'd', 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`isbn`);

--
-- Index för tabell `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`userid`,`isbn`),
  ADD KEY `isbn` (`isbn`);

--
-- Index för tabell `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`userid`);

--
-- Index för tabell `odetails`
--
ALTER TABLE `odetails`
  ADD PRIMARY KEY (`ono`,`isbn`),
  ADD KEY `isbn` (`isbn`);

--
-- Index för tabell `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ono`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `members`
--
ALTER TABLE `members`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT för tabell `orders`
--
ALTER TABLE `orders`
  MODIFY `ono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `members` (`userid`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `books` (`isbn`);

--
-- Restriktioner för tabell `odetails`
--
ALTER TABLE `odetails`
  ADD CONSTRAINT `odetails_ibfk_1` FOREIGN KEY (`ono`) REFERENCES `orders` (`ono`),
  ADD CONSTRAINT `odetails_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `books` (`isbn`);

--
-- Restriktioner för tabell `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `members` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
