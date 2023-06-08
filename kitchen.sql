-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               11.0.1-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table kitchen.attendances: ~13 rows (approximately)
INSERT INTO `attendances` (`Id`, `emp_id`, `day`, `checkin_at`) VALUES
	(100, 401, '2023-06-15', '2023-06-01 15:07:05'),
	(101, 402, '2023-06-15', '2023-06-01 15:10:55'),
	(102, 403, '2023-06-28', '2023-06-01 15:10:55'),
	(105, 406, '2023-06-15', '2023-06-15 20:13:41'),
	(106, 403, '2023-06-14', '2023-06-14 20:13:41'),
	(107, 407, '2023-06-02', '2023-06-02 20:13:41'),
	(108, 409, '2023-06-14', '2023-06-14 20:13:41'),
	(109, 407, '2023-06-13', '2023-06-13 20:13:41'),
	(110, 410, '2023-06-01', '2023-06-01 15:13:30'),
	(111, 411, '2023-06-07', '2023-06-07 20:13:41'),
	(112, 411, '2023-06-08', '2023-06-08 20:13:41'),
	(113, 410, '2023-06-02', '2023-06-02 20:13:41'),
	(114, 409, '2023-06-01', '2023-06-01 15:13:30');

-- Dumping data for table kitchen.customers: ~14 rows (approximately)
INSERT INTO `customers` (`Id`, `name`, `phone`) VALUES
	(300, 'Hiếu', '12314234'),
	(301, 'Long', '12412443'),
	(302, 'Nhật', ' 124124'),
	(303, 'Bản', '345345335'),
	(304, 'Bình', '12354125'),
	(305, 'Minh', '3453453'),
	(306, 'Kiêm', '12412344'),
	(307, 'Kinh', '124124'),
	(308, 'Cam', '12345345'),
	(309, 'Canh', '12341234'),
	(310, 'Quýt', '124124'),
	(311, 'Ban', '23456345'),
	(312, 'Kim', '1234512345'),
	(313, 'Huy', '12341234');

-- Dumping data for table kitchen.dishes: ~11 rows (approximately)
INSERT INTO `dishes` (`id`, `name`, `cost`, `price`) VALUES
	(200, 'Cơm rang dưa bò', 20000, 45000),
	(201, 'Bánh mì nướng muối ớt', 7500, 20000),
	(202, 'Cơm rang thập cẩm', 13000, 35000),
	(203, 'Sting', 7500, 15000),
	(204, 'Phở bò', 15000, 40000),
	(205, 'Nem chua rán', 15000, 35000),
	(206, 'Kem', 3000, 12000),
	(207, 'Cơm gà chiên', 17000, 40000),
	(208, 'Cơm sườn sốt', 20000, 45000),
	(209, 'Cơm rang gà chiên', 20000, 45000),
	(210, 'Cơm rang trứng', 10000, 25000);

-- Dumping data for table kitchen.employees: ~12 rows (approximately)
INSERT INTO `employees` (`Id`, `name`, `phone`, `position`, `salary`) VALUES
	(400, 'Hiếu', '123414', 'nv', 4000),
	(401, 'Sơn', '152345', 'PB', 5000),
	(402, 'Hùng', '145123', 'NV', 4000),
	(403, 'Long', '124123', 'NV', 4000),
	(404, 'Hiển', '123515', 'BC', 6000),
	(405, 'Nhật', '145153', 'PB', 5000),
	(406, 'Tùng', '834756', 'NV', 4000),
	(407, 'Minh', '123526', 'PB', 5000),
	(408, 'Ninh', '152345', 'BT', 7000),
	(409, 'Nam', '345666', 'NV', 4000),
	(410, 'Cam', '151243124', 'NV', 4000),
	(411, 'Kinh', '12352345', 'PB', 5000);

-- Dumping data for table kitchen.ingredients: ~11 rows (approximately)
INSERT INTO `ingredients` (`Id`, `name`, `date_in`, `in_stock`, `cost`) VALUES
	(600, 'thịt bò', '2023-06-14', 30000, 150000),
	(601, 'trứng', '2023-06-14', 1000, 2300),
	(602, 'dưa chua', '2023-06-22', 1000, 2000),
	(603, 'cơm', '2024-06-13', 100000, 3500),
	(604, 'cà chua', '2023-06-30', 10000, 60000),
	(605, 'đường', '2023-10-12', 10000, 18000),
	(606, 'muối', '2023-08-24', 10000, 1000),
	(607, 'dầu hào', '2023-07-21', 10000, 40000),
	(608, 'xì dầu', '2023-06-14', 10000, 20000),
	(609, 'thịt gà', '2023-06-22', 60000, 120000),
	(610, 'sữa', '2023-06-23', 70000, 20000);

-- Dumping data for table kitchen.orders: ~1 rows (approximately)
INSERT INTO `orders` (`Id`, `createdDay`, `createdTime`, `cus_Id`) VALUES
	(701, '2023-06-08', '11:49:06', 301);

-- Dumping data for table kitchen.order_detail: ~3 rows (approximately)
INSERT INTO `order_detail` (`id`, `order_id`, `dishes_id`, `quantity`) VALUES
	(1, 701, 201, 1),
	(2, 701, 203, 2),
	(3, 701, 206, 2);

-- Dumping data for table kitchen.quantities: ~2 rows (approximately)
INSERT INTO `quantities` (`dish_id`, `ingredient_id`, `quantity`) VALUES
	(200, 600, 1),
	(200, 603, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;