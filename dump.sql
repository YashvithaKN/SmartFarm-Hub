
--
-- Host: 127.0.0.1

-- Generation Time: Jun 10, 2023 at 09:36 AM
-- 
Server version: 10.4.27-MariaDB
-- 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;


--
-- Database: ranchers
--

-- --------------------------------------------------------

--
-- 
Table structure for table admin

--

CREATE TABLE admin (
  username varchar(100) NOT NULL,
  password varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table admin
--


INSERT INTO admin (username, password) 
VALUES
('	admin', 'admin');


-- --------------------------------------------------------

--
-- 
Table structure for table booking

--CREATE TABLE booking (
  bid int(100) NOT NULL,
  spid varchar(100) NOT NULL,
  stitle varchar(100) NOT NULL,
  message varchar(100) NOT NULL,
  fname varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table booking
--


INSERT INTO booking (bid, spid, stitle, message, fname) 
VALUES
(1, '1', 'Fertilizer Shop', 'i want service', 'raj');
INSERT INTO booking (bid, spid, stitle, message, fname) 
VALUES
(2, '1', 'Zig Zag fertilizer', 'it\'s Very Urgent Sir\r\n', 'raj');


-- --------------------------------------------------------

--
--
Table structure for table cinfo
--


CREATE TABLE cinfo (
  cid int(100) NOT NULL,
  fname varchar(100) NOT NULL,
  cat varchar(100) NOT NULL,
  region varchar(100) NOT NULL,
  hmonth varchar(100) NOT NULL,
  quantity varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table cinfo
--


INSERT INTO cinfo (cid, fname, cat, region, hmonth, quantity) 
VALUES
(1, 'raj', 'Ragi', 'Mysore', 'April', '2 ton ');


-- --------------------------------------------------------

--
-- 
Table structure for table confirm
--


CREATE TABLE confirm (
  cid int(100) NOT NULL,
  bid varchar(100) NOT NULL,
  stitle varchar(100) NOT NULL,
  smess varchar(100) NOT NULL,
  status varchar(100) NOT NULL,
  sname varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table confirm
--


INSERT INTO confirm (cid, bid, stitle, smess, status, sname) 
VALUES
(1, '1', 'Fertilizer Shop', 'ok sir', 'Accept', 'ramesh');


-- --------------------------------------------------------

--
-- 
Table structure for table cprice
--


CREATE TABLE cprice (
  pid int(100) NOT NULL,
  region varchar(100) NOT NULL,
  cat varchar(100) NOT NULL,
  price varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table cprice
--


INSERT INTO cprice (pid, region, cat, price) 
VALUES
(1, 'Mysore', 'Ragi', '60 rs/kg');


-- --------------------------------------------------------

--
-- 
Table structure for table crop
--
CREATE TABLE crop (
  cid int(11) NOT NULL,
  cname varchar(20) NOT NULL,
  ctype text NOT NULL,
  image varchar(100) NOT NULL,
  about text NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table crop
--


INSERT INTO crop (cid, cname, ctype, image, about) 
VALUES
(1, 'coffee', 'plantation crop', 'crop.jpg', 'tfygvubinl');




-- --------------------------------------------------------

--
-- 
Table structure for table feedback
--


CREATE TABLE feedback (
  fid int(100) NOT NULL,
  fname varchar(100) NOT NULL,
  spid varchar(100) NOT NULL,
  rating varchar(100) NOT NULL,
  mess varchar(100) NOT NULL,
  resp text NOT NULL,
  sta int(20) NOT NULL DEFAULT 0
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table feedback
--


INSERT INTO feedback (fid, fname, spid, rating, mess, resp, sta) 
VALUES
(1, 'raj', 'bnm', '63', 'excellent service', '', 1);
INSERT INTO feedback (fid, fname, spid, rating, mess, resp, sta) 
VALUES
(2, 'bnm', 'bnm', '100', 'hai', 'hlo', 1);


-- --------------------------------------------------------

--
-- 
Table structure for table fertilizer
--


CREATE TABLE fertilizer (
  fid int(11) NOT NULL,
  fname varchar(20) NOT NULL,
  ftype text NOT NULL,
  image varchar(100) NOT NULL,
  about text NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table fertilizer
--


INSERT INTO fertilizer (fid, fname, ftype, image, about) 
VALUES
(1, 'xtdyuygh', 'Nitrogen fertilizers', 'img.jpg', 'tfygvubinl');


-- --------------------------------------------------------

--
-- 
Table structure for table fusers
--


CREATE TABLE fusers (
  fid int(100) NOT NULL,
  username varchar(100) NOT NULL,
  fullname varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  phone varchar(100) NOT NULL,
  address varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  trn_date varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table fusers
--


INSERT INTO fusers (fid, username, fullname, email, phone, address, password, trn_date) 
VALUES
(1, 'raj', 'rajkumar', 'rajkumar@gmail.com', '8473987348', 'Bangalore, Karnataka, India', '698d51a19d8a121ce581499d7b701668', '2022-12-11 17:55:02');
INSERT INTO fusers (fid, username, fullname, email, phone, address, password, trn_date) 
VALUES
(2, 'sagar', 'SAGAR D', 'sagarsmarty84@gmail.com', '9071198727', 'dvgth', 'cd1d2147e0460d191419a5e1ca4a3106', '2023-05-16 12:40:19');
INSERT INTO fusers (fid, username, fullname, email, phone, address, password, trn_date) 
VALUES
(3, 'sagar', 'SAGAR D', 'sagarsmarty84@gmail.com', '9071198727', 'Jss  college of arts, commerce and science college ooty road, mysuru\r\nNear shakthidhama', '41ed44e3038dbeee7d2ffaa7f51d8a4b', '2023-06-06 13:14:36');
INSERT INTO fusers (fid, username, fullname, email, phone, address, password, trn_date) 
VALUES
(4, 'bnm', 'SAGAR D', 'sagarsmarty84@gmail.com', '9071198727', 'Jss  college of arts, commerce and science college ooty road, mysuru\r\nNear shakthidhama', 'bd93b91d4a5e9a7a5fcd1fad5b9cb999', '2023-06-22 22:41:17');


-- --------------------------------------------------------

--
-- 
Table structure for table orders
--


CREATE TABLE orders (
  oid int(11) NOT NULL,
  pid int(20) NOT NULL,
  fname varchar(20) NOT NULL,
  uname varchar(20) NOT NULL,
  pname varchar(100) NOT NULL,
  pimage varchar(100) NOT NULL,
  pprice int(20) NOT NULL,
  about varchar(100) NOT NULL,
  status varchar(100) NOT NULL DEFAULT 'Pending',
  sta int(5) NOT NULL DEFAULT 0
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table orders
--


INSERT INTO orders (oid, pid, fname, uname, pname, pimage, pprice, about, status, sta) 
VALUES
(1, 9, 'sagar', 'bnm', 'ghee', 'ghee.jpg', 750, 'Pure Ghee', 'completed', 1);
INSERT INTO orders (oid, pid, fname, uname, pname, pimage, pprice, about, status, sta) 
VALUES
(2, 9, 'sagar', 'bnm', 'ghee', 'ghee.jpg', 750, 'Pure Ghee', 'cancelled', 5);
INSERT INTO orders (oid, pid, fname, uname, pname, pimage, pprice, about, status, sta) 
VALUES
(3, 9, 'sagar', 'bnm', 'ghee', 'ghee.jpg', 750, 'Pure Ghee', 'ongoing', 2);
INSERT INTO orders (oid, pid, fname, uname, pname, pimage, pprice, about, status, sta) 
VALUES
(4, 9, 'sagar', 'bnm', 'ghee', 'ghee.jpg', 750, 'Pure Ghee', 'Pending', 0);


-- --------------------------------------------------------

--
-- 
Table structure for table products
--


CREATE TABLE products (
  pid int(5) NOT NULL,
  fname varchar(20) NOT NULL,
  pname varchar(20) NOT NULL,
  pimage varchar(100) NOT NULL,
  pprice int(10) NOT NULL,
  about varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table products
--


INSERT INTO products (pid, fname, pname, pimage, pprice, about) 
VALUES
(1, 'sagar', 'ghee', 'ghee.jpg', 750, 'Pure Ghee');
INSERT INTO products (pid, fname, pname, pimage, pprice, about) 
VALUES
(2, 'sagar', 'curd', 'curd.jpeg', 100, 'Fresh Curd');
INSERT INTO products (pid, fname, pname, pimage, pprice, about) 
VALUES
(3, 'sagar', 'Milk', 'milk.jpeg', 100, 'Pure Milk');


-- --------------------------------------------------------

--
-- 
Table structure for table sinfo
--


CREATE TABLE sinfo (
  spid int(100) NOT NULL,
  sname varchar(100) NOT NULL,
  stitle varchar(100) NOT NULL,
  cat varchar(100) NOT NULL,
  region varchar(100) NOT NULL,
  image varchar(100) NOT NULL,
  address varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table sinfo
--


INSERT INTO sinfo (spid, sname, stitle, cat, region, image, address) 
VALUES
(1, 'ramesh', '', 'Red Soil', 'Mysore', '', '');


-- --------------------------------------------------------

--
-- 
Table structure for table soil
--


CREATE TABLE soil (
  sid int(11) NOT NULL,
  sname text NOT NULL,
  sarea text NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table soil
--


INSERT INTO soil (sid, sname, sarea) 
VALUES
(1, 'Red Soil', 'Mysore');

INSERT INTO soil (sid, sname, sarea) 
VALUES
(2, 'Red Soil', 'Mandya');


-- --------------------------------------------------------

--
-- 
Table structure for table susers
--


CREATE TABLE susers (
  sid int(100) NOT NULL,
  username varchar(100) NOT NULL,
  fullname varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  phone varchar(100) NOT NULL,
  address varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  trn_date varchar(100) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table susers
--


INSERT INTO susers (sid, username, fullname, email, phone, address, password, trn_date) 
VALUES
(1, 'ramesh', 'ramesh s', 'ramesh@gmail.com', '8979878979', 'Mysore, Karnataka, India', '698d51a19d8a121ce581499d7b701668', '2022-12-11 17:53:01');
INSERT INTO susers (sid, username, fullname, email, phone, address, password, trn_date) 
VALUES
(2, 'user', 'user', 'sagarsmarty84@gmail.com', '9071198727', 'Jss  college of arts, commerce and science college ooty road, mysuru\r\nNear shakthidhama', '202cb962ac59075b964b07152d234b70', '2023-06-20 13:38:13');
INSERT INTO susers (sid, username, fullname, email, phone, address, password, trn_date) 
VALUES
(3, 'bnm', 'SAGAR D', 'sagarsmarty84@gmail.com', '9071198727', 'Jss  college of arts, commerce and science college ooty road, mysuru\r\nNear shakthidhama', 'bd93b91d4a5e9a7a5fcd1fad5b9cb999', '2023-06-23 08:20:33');


--
-- Indexes for dumped tables
--

--
-- 
Indexes for table booking
--

ALTER TABLE booking
  ADD PRIMARY KEY (bid);


--
-- Indexes for table cinfo
--

ALTER TABLE cinfo
  ADD PRIMARY KEY (cid);


--
-- Indexes for table confirm
--

ALTER TABLE confirm
  ADD PRIMARY KEY (cid);


--
-- Indexes for table cprice
--

ALTER TABLE cprice
  ADD PRIMARY KEY (pid);


--
-- Indexes for table crop
--

ALTER TABLE crop
  ADD PRIMARY KEY (cid);


--
-- Indexes for table feedback
--

ALTER TABLE feedback
  ADD PRIMARY KEY (fid);


--
-- Indexes for table fertilizer
--

ALTER TABLE fertilizer
  ADD PRIMARY KEY (fid);


--
-- Indexes for table fusers
--

ALTER TABLE fusers
  ADD PRIMARY KEY (fid);


--
-- Indexes for table orders
--

ALTER TABLE orders
  ADD PRIMARY KEY (oid);


--
-- Indexes for table products
--

ALTER TABLE products
  ADD PRIMARY KEY (pid);


--
-- Indexes for table sinfo
--

ALTER TABLE sinfo
  ADD PRIMARY KEY (spid);


--
-- Indexes for table soil
--

ALTER TABLE soil
  ADD PRIMARY KEY (sid);


--
-- Indexes for table susers
--

ALTER TABLE susers
  ADD PRIMARY KEY (sid);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- 
AUTO_INCREMENT for table booking
--

ALTER TABLE booking
  MODIFY bid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


--
-- AUTO_INCREMENT for table cinfo
--

ALTER TABLE cinfo
  MODIFY cid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- AUTO_INCREMENT for table confirm
--

ALTER TABLE confirm
  MODIFY cid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


--
-- AUTO_INCREMENT for table cprice
--

ALTER TABLE cprice
  MODIFY pid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- AUTO_INCREMENT for table crop
--

ALTER TABLE crop
  MODIFY cid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- AUTO_INCREMENT for table feedback
--

ALTER TABLE feedback
  MODIFY fid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


--
-- AUTO_INCREMENT for table fertilizer
--
ALTER TABLE fertilizer
  MODIFY fid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- AUTO_INCREMENT for table fusers
--

ALTER TABLE fusers
  MODIFY fid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


--
-- AUTO_INCREMENT for table orders
--

ALTER TABLE orders
  MODIFY oid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


--
-- AUTO_INCREMENT for table products
--

ALTER TABLE products
  MODIFY pid int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


--
-- AUTO_INCREMENT for table sinfo
--

ALTER TABLE sinfo
  MODIFY spid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- AUTO_INCREMENT for table soil
--

ALTER TABLE soil
  MODIFY sid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


--
-- AUTO_INCREMENT for table susers
--

ALTER TABLE susers
  MODIFY sid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            