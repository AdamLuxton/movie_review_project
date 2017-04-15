-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 04:04 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chantry`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` smallint(6) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_user` varchar(30) NOT NULL,
  `admin_pw` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_user`, `admin_pw`) VALUES
(1, 'Chantry Admin', 'admin1', 'adminpw');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `event_id` smallint(6) NOT NULL,
  `event_name` varchar(140) NOT NULL,
  `event_text` text NOT NULL,
  `event_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`event_id`, `event_name`, `event_text`, `event_date`) VALUES
(1, 'ISLAND DOCKS COME HOME', 'Friday September 16, fourteen volunteers and three boats left for the island at 8:30 in the morning. We spent two hours dismantling the metal walkways and craning them up onto the floating dock. The weather was perfect and all went well. If this sounds interesting to you make sure you sign up for the next opportunity by watching these postings.', '2016-09-30'),
(2, 'CHRISTMAS PARAGE SOUTHAMPTON 2016', 'The Southampton Christmas Parade always takes place on the First Friday in December. We will be preparing the Peerless II for this annual tradition. Decoration and theme will take place in the Southampton Boathouse the week before. Come and join us and get to be a part of a great group of volunteers sailing down High Street.', '2016-12-02'),
(3, 'MARINE HERITAGE SOCIETY / PROPELLER CLUB AGM 2016', 'The Annual Marine Heritage Society and Propeller Club AGM will take place on Friday, November 25, 2016. Location will be at the Walker House in Southampton. Roast Beef or Chicken are the choices for food. Tickets will be on sale at the Propeller Club meetings and through Marine Heritage Board members. Continue to check postings for further information.', '2016-09-30'),
(4, 'DOUG JOHNSONS 91ST BIRTHDAY', 'Doug is one of the oldest supporters of the Chantry Island project.', '2017-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` smallint(6) NOT NULL,
  `gallery_img` varchar(100) NOT NULL,
  `gallery_author` varchar(100) NOT NULL,
  `gallery_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `gallery_img`, `gallery_author`, `gallery_desc`) VALUES
(1, 'walberg1.jpg', 'Carol Walberg', 'Birds nesting on the island.'),
(2, 'walberg2.jpg', 'Carol Walberg', 'The lighthouse during winter.'),
(3, 'walberg3.jpg', 'Carol Walberg', 'Birds nesting on the island.'),
(4, 'walberg4.jpg', 'Carol Walberg', 'The lighthouse at sunset.'),
(5, 'douglass.bmp', 'Gale Douglass', 'The Pierless II Cruise Boat.'),
(6, 'swartz1.jpg', 'James Swartz', 'Inside the Lightkeeper\'s Cottage.'),
(7, 'swartz2.jpg', 'James Swartz', 'Inside the Lightkeeper\'s Cottage.'),
(8, 'swartz3.jpg', 'James Swartz', 'Inside the Lightkeeper\'s Cottage.'),
(9, 'swartz4.jpg', 'James Swartz', 'A Great View of Chantry Island'),
(10, 'calder1.jpg', 'Nancy Calder', 'Birds on Chantry Island.'),
(11, 'calder2.jpg', 'Nancy Calder', 'Birds on Chantry Island.'),
(12, 'calder3.jpg', 'Nancy Calder', 'Birds on Chantry Island.'),
(13, 'calder4.jpg', 'Nancy Calder', 'Birds on Chantry Island.'),
(14, 'tomori1.jpg', 'Vicki Tomori', 'View of the Lighthouse.'),
(15, 'tomori2.jpg', 'Vicki Tomori', 'Flowers on Chantry Island.'),
(16, 'tomori3.jpg', 'Vicki Tomori', 'Inside the Lightkeeper\'s Cottage.'),
(17, 'tomori4.jpg', 'Vicki Tomori', 'View of the Lighthouse.'),
(18, 'tomori5.jpg', 'Vicki Tomori', 'View of the Lighthouse.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` smallint(6) NOT NULL,
  `news_name` varchar(140) NOT NULL,
  `news_img` varchar(100) NOT NULL,
  `news_text` text NOT NULL,
  `news_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_name`, `news_img`, `news_text`, `news_date`) VALUES
(1, 'Chambettes Present Cheque to Marine Heritage Society', '000.jpg', 'The Marine Heritage Society was pleased to receive a cheque for $1500.00 from the local Chambettes. This represents donations received connected to the September 10 "Chantry Island Sleepover". We are certainly grateful and appreciate all the support we have received from the Chambettes both in the past & present. Thank You! Picture Credit to Sandy Lindsay', '2016-11-26'),
(2, 'MHS and Propeller Club Annual General Meeting', '001.jpg', 'It was a fine time to dine last Friday night at the 13th annual Marine Heritage and Propeller Club General Business meeting and dinner. The Walker House in Southampton served a fine meal and over 60 supporters were in attendance. Captain Gerald Grieg from Lions Head presented the "Tales and Yarns" of our Great Lakes and Great Ships. The evening concluded with a live Auction with lots of fun and laughs. Thanks for coming and if you could not make it...we missed you.', '2016-11-26'),
(3, 'MHS and Propeller Club Annual General Meeting', '002.jpg', 'The dinner table was full and fun. The conversation was lively and spontaneous. The meal was excellent! Photo by Sandy Lindsay', '2016-11-25'),
(4, 'Southampton Christmas Parade', '003.jpg', 'The Marine Heritage Society and Propeller Club Float or I mean boat was well received Friday Night at the annual Christmas Parade. Towing the Boat was a Saugeen Shores Fire pick up truck driven by Phil Eagleson our Fire Chief.', '2016-12-02'),
(5, 'Southampton Christmas Parade', '004.jpg', 'The Peerless II outside the Boathouse in southampton. Photo courtesy Eric Rogers.', '2016-12-02'),
(6, 'Chantry Island Tour Base', '005.jpg', 'Inside the Chantry Island Tour Base, where tickets can be purchased for the tours to Chantry Island. The Tour Base will open again in June.', '2017-01-08'),
(7, 'Doug Johnsons 91st Birthday', '006.jpg', 'Doug Johnson is giving a short talk about his history with the Propeller Club. He is one of our strongest supporters.', '2017-01-10'),
(8, 'Doug Johnson Proudly Displays the Famous Saying.', '007.jpg', '', '2017-01-18'),
(9, 'Boat House Southampton', '008.jpg', 'Work on the Tilbury continues as the winter slowly approaches conclusion.', '2017-02-03'),
(10, 'Boat House Work', '009.jpg', 'Soon our Island extensions and crossbars will be welded and drilled to serve as supports in the water holding up the metal walkways.', '2017-03-01'),
(11, 'Paddles and Pieces', '010.jpg', 'Oars, paddles and pieces of the Tilbury are currently being painted and repaired in preparation of an early Spring and Island work.', '2017-03-01'),
(12, 'The Boat is Very Heavy', '011.jpg', 'A heavy boat requires heavy equipment to do the job safely.', '2017-03-01'),
(13, 'The Inside looks as good as the Outside', '012.jpg', 'Now the boat is flipped, it has to be lifted again and set back on the trailer. Thanks to all who were able to come out and help. More pictures and movies are available if you click on the Facebook link found on our first page.', '2017-03-01'),
(14, 'Liferaft Certification', '013.jpg', 'The 12 man life raft will soon be certified and ready for remounting on the Peerless. This is a heavy, time consuming and expensive job which must be done every 2 years. We are fortunate to have the Local Fire Dept. help us keep the tour boat safe every season.', '2017-03-01'),
(15, 'Flipping the Tilbury Work Boat', '014.jpg', 'Every year our work boat is stripped down, painted both inside and out and prepared for another season of hard work. Thanks to the Town and our volunteers this turns into a fun and productive activity.', '2017-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_text`
--

CREATE TABLE `tbl_text` (
  `text_id` smallint(6) NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `text_section` varchar(140) NOT NULL,
  `text_image` varchar(100) NOT NULL,
  `text_title` varchar(200) NOT NULL,
  `text_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_text`
--

INSERT INTO `tbl_text` (`text_id`, `page_name`, `text_section`, `text_image`, `text_title`, `text_text`) VALUES
(1, 'index', 'Introduction Section', 'images/island.svg', 'Touring Chantry Island', 'As you take the 15 minute boat ride to the island you will enjoy the outstanding views of the sandy beach shoreline and the deep blue waters of Lake Huron. During your two hour guided visit on Chantry Island, you have the opportunity to climb to the top of the Imperial Lighthouse for extraordinary views of the island.<br>\r\n<br>Stroll back in time while visiting the Light Keeper\'s Cottage as it existed in the late 1800\'s, decorated with period furnishings from private donors and the Bruce County Museum and Cultural Centre. You will also see the surrounding gardens and many species of birds.'),
(2, 'index', 'Heritage Section', 'images/logo.svg', 'Marine Heritage Society', 'The Marine Heritage Society is a not-for-profit group of volunteers dedicated to the preservation and enhancement of our community\'s marine history. The goal of the Society is to identify, preserve and restore material items of marine historical significance and to raise sufficient funds to support these endeavors. They are also winner of the 2010 "Locals Know" Canada wide competition.\r\n<br><br>Among other projects, the Society manages the Chantry Island Light Station under agreements and restrictions from the Canadian Coast Guard and the Canadian Wildlife Service.'),
(3, 'about', 'Introduction Section', 'images/island.svg', 'About Chantry Island', 'Chantry Island is located on Lake Huron, just over a mile southwest of the Saugeen River mouth in Southampton, Ontario. On the island is a majestic Imperial Lighthouse built in the mid 1800\'s, as well as the Keeper\'s quarters and a boat house. In 1822, during a hydrographic survey, Captain Henry Bayfield of the Royal Navy christened the island and named it after his friend and British sculptor Sir Francis Chantry.'),
(4, 'about', 'Section One', 'images/island_black.svg', 'Chantry Island', 'Chantry Island is a glacial moraine and consists of stone above the water and beneath extending a mile north and a mile south of the island. These underwater shoals of massive granite boulders have made this area one of the most treacherous in the Great Lakes. There are over 50 known shipwrecks around the island and there are many accounts from the 1800\'s and early & mid 1900\'s of these disasters and lost lives. Today, buoys and modern navigational tools safely guide boats through the area.\r\n<br><br>The island varies in size depending on the level of Lake Huron. Today, with a low lake level Chantry Island is about 68 acres. In 1986 when the water level was at the highest of the century, the island was only about 10 acres, causing trees on the west, north and south sides to drown.'),
(5, 'about', 'Section Two', 'images/lighthouse.svg', 'The Lighthouse History', 'During the mid 1800\'s water traffic on the Great Lakes had substantially increased and the colonial government called for improved navigational tools for the mariners on the Lake Huron. John Brown of Thorold was contracted to build the lighthouse on Chantry Island, as well as 10 other lighthouses to help sailors navigate the Lake. Because of the expense and difficulty of building, only six were completed. The Chantry Island Lighthouse was one of these completed and it was lit on April 1, 1859.\r\n<br><br>The lighthouse stands 86 ft. above water level and is 80 ft. high from its base to the light\'s center. The lantern room of the lighthouse was fitted with a Fresnel lens built and transported from Paris, France. The first fuel used was sperm whale oil and the first light was a fixed light, not the familiar flashing one. Other fuels used have been colza oil, coal oil, kerosene, acetylene and electricity. Its present-day flashing light is solar powered.\r\n'),
(6, 'about', 'Section Three', 'images/birds.svg', 'Federal Bird Sanctuary', 'In 1957 the Canadian Wildlife Service declared Chantry Island a Federal Migratory Bird Sanctuary to protect the migratory and nesting birds of the island. It is the largest Federal Migratory Bird Sanctuary between James Bay and Point Pelee. There are approximately fifty thousand birds (including chicks) on the island during the breeding season. It is home to nesting colonies of Great Blue Heron, Great Egret, Black-crowned Night-Heron, Herring Gull, Ring-billed Gull and Double-crested Cormorant. Water fowl such as Mallard, American Black Duck, Gadwall, Blue-winged Teal, Green-winged Teal, Northern Pintail, and American Wigeon are also known nesters on the island.\r\n<br><br>Because the island is a migratory bird sanctuary, the number of people on the island on any given day is strictly limited and tours must be booked through the Chantry Island Tour Base.           '),
(7, 'news', 'Introduction Section', 'images/island.svg', 'Chantry Island News', 'Welcome to our News page. Here we\'ll cover new projects, and give information about ongoing projects. Our Events page has news about upcoming events and things you don\'t want to miss. Don\'t forget to connect to our Facebook page as well to find out more.\r\n<br><br>Check back soon for more news about the island and updates on all of our projects. Expect to see more frequent updating during our operating season end of May to mid-September. View schedules for exact dates.\r\n'),
(8, 'events', 'Introduction Section', 'images/island.svg', 'Marine Heritage Society Events', 'Welcome to our Events page. Here we\'ll let you know about upcoming events and ongoing events that involve the Marine Heritage Society. Check back often during our operating season so that you don\'t miss anything.\r\n<br><br>You can also connect with our Facebook page for updates about current events and more information.\r\n'),
(9, 'restoration', 'Introduction Section', 'images/island.svg', 'Lighthouse Restoration', 'For almost 100 years (1859 - 1954), light keepers lived on the island to keep the light burning for mariners on the lake. When the lighthouse lamp was converted to electricity in 1954, a light keeper was no longer needed. The buildings were left neglected and suffered at the hands of vandals. The lighthouse still stood intact, but little was left of the light keeper\'s quarters. The roof had fallen in and the walls and floors had crumbled into a pile of rubble in the basement.\r\n'),
(10, 'restoration', 'Section One', 'images/before.png', 'Light Keeper\'s Cottage Before Restoration', 'In 1997 the local Marine Heritage Society established specific goals for the island\'s restoration. The project was to be funded by donations and fundraising efforts, and the majority of the work was to be done by volunteers.\r\n            <br><br>With permission from 5 levels of government, the group of volunteers began to rebuild the light keeper\'s cottage, using the original structure plans\r\n'),
(11, 'restoration', 'Section Two', 'images/after.png', 'Light Keeper\'s Cottage & Grounds After Restoration', 'The Light Keeper\'s Cottage restoration was completed in 2001. Over 250 volunteers put in more than 300,000 hours of labor to finish the restoration and ready the boat for tours. Since 2001 volunteers have restored the staircase of the lighthouse, built a boathouse on the island, constructed a replica of the original boat (which sits in the boathouse) and reconstructed the privy.\r\n            <br><br>Today the tour is operated with over 125 volunteers, whose jobs include island housekeepers, gardeners, tour boat captains, crew and tour guides, and gift shop sales and service personnel. Volunteers also install the portable walkways and docks every spring and remove them every fall. To date, there have been over 12,000 visitors to the island.\r\n'),
(12, 'booking', 'Introduction Section', 'images/island.svg', 'When and Where to Arrive', 'Come to the Chantry Island Tour Base and Gift Shop located at the south side of the Saugeen River at the harbour in Southampton (See Maps) and arrive 15 minutes ahead of your scheduled tour. Check in and receive your ticket. You will be directed to the dock for the Peerless II.\r\n'),
(13, 'booking', 'Section One', 'images/shoe.svg', 'Tour Information', 'The tour is much like a medium hike and requires a degree of agility and fitness. You can enjoy the tour without climbing the 106 steps in the Lighthouse tower. However, when you do reach the light room, you will always remember the view.\r\n<br><br>For safety, children must be a minimum of 4 feet tall and must be accompanied by an Adult.<br><br>Footwear suitable for hiking is mandatory. For safety reasons, Flip-Flops are not allowed.\r\n'),
(14, 'booking', 'Section Two', 'images/noimg.jpg', 'Also Note', 'The 2 hour tour must be pre-booked and prepaid.<br>\r\nThere are 9 seats on the boat. The cost is $30.00 per person (includes HST).<br>\r\nFor refunds, cancellations must be received 24 hours before the scheduled departure.<br>\r\nChantry Island is a Federal Migratory Bird Sanctuary and No Pets allowed on the island.<br>\r\nCancellation can be caused by weather conditions but light rain is fine.</p>\r\n'),
(15, 'schedule', 'Introduction Section', 'images/island.svg', 'Chantry Island Tour Schedule and Rates', 'We offer tours throughout the summer season from late May to mid-September. During June and July, we offer the tour daily, check below for the exact schedule. Note, it does change on a yearly basis.\r\n<br><br>Since the Chantry Island is also Federal Bird Sanctuary we are only able to bring 12 persons per tour. Therefore, call ahead to ensure your place on the boat.\r\n<br><br>Call: 519-797-5862\r\n<br>Toll Free: 1-866-797-5862\r\n'),
(16, 'gallery', 'Introduction Section', 'images/island.svg', 'Photo Gallery', 'Welcome to our photo gallery. This section includes pictures of Chantry Island and the area of Lake Huron surrounding the Island. It also includes pictures of the lighthouse and keeper\'s cottage inside and out, as well as photos of some of the birds and flowers native to the island.\r\n<br><br>If you have photos of Chantry Island that you would like to share with us, connect with our Facebook page.\r\n'),
(17, 'volunteers', 'Introduction Section', 'images/island.svg', 'Marine Heritage Society Volunteers', 'The Marine Heritage Society is a not-for-profit group of volunteers dedicated to the preservation and enhancement of our community\'s marine history. Since so many people volunteer their time and energy to help our organization function, this page is dedicated to our wonderful volunteers. Thank you all very much, this would not be possible without your time and donations.\r\n'),
(18, 'donations', 'Introduction Section', 'images/island.svg', 'Donations', 'We are currently engaged in Fund Raising to support our New Boat, Dock Improvements, and Marine Heritage Projects.<br><br>\r\nWe will send a tax receipt for all donations $20 and more.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_volunteers`
--

CREATE TABLE `tbl_volunteers` (
  `volunteer_id` smallint(6) NOT NULL,
  `volunteer_name` varchar(100) NOT NULL,
  `volunteer_position` varchar(30) NOT NULL,
  `volunteer_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_volunteers`
--

INSERT INTO `tbl_volunteers` (`volunteer_id`, `volunteer_name`, `volunteer_position`, `volunteer_date`) VALUES
(1, 'Don Nicholson', 'Chairman', '2016-06-17'),
(2, 'Pat O\'Connor', 'Vice Chairman', '2016-06-17'),
(3, 'John Rigby', 'Treasurer', '2016-09-30'),
(4, 'Stan Young', 'Secretary', '2016-06-17'),
(5, 'Rick Smith', 'Past Chairman', '2016-06-17'),
(6, 'Ali Kelly', 'None', '2016-06-17'),
(7, 'Jane Kramer', 'None', '2016-06-17'),
(8, 'Vicki Tomori', 'None', '2016-06-17'),
(9, 'Dan Holmes', 'None', '2016-06-17'),
(10, 'Dave Wenn', 'None', '2016-06-17'),
(11, 'Ed Braun', 'None', '2016-06-17'),
(12, 'John Willetts', 'None', '2016-09-30'),
(13, 'Peter Williamson', 'None', '2016-09-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_text`
--
ALTER TABLE `tbl_text`
  ADD PRIMARY KEY (`text_id`);

--
-- Indexes for table `tbl_volunteers`
--
ALTER TABLE `tbl_volunteers`
  ADD PRIMARY KEY (`volunteer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `event_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_text`
--
ALTER TABLE `tbl_text`
  MODIFY `text_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_volunteers`
--
ALTER TABLE `tbl_volunteers`
  MODIFY `volunteer_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
