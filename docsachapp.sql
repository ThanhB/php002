-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 05:03 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docsachapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `CategoryImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`, `CategoryImg`) VALUES
(1, 'Lịch sử - Chính trị', 'https://www.iaspaper.net/wp-content/uploads/2017/03/NCERT-Solutions-For-Class-8-History.jpg'),
(2, 'Tâm lý học', 'http://congngheweb.vn/data/images/news/Thang%205-2014/Marketing%20Online_Van%20dung%20ly%20thuyet%20tam%20ly%20hoc%20cho%20Marketing.jpg'),
(3, 'Tình cảm lạng mạng', 'http://anhnendep.net/wp-content/uploads/2016/03/hinh-nen-tinh-yeu-doi-lua-dep-01.jpg'),
(4, 'Tuổi học trò', 'http://wikichiase.com/wp-content/uploads/2016/06/tho-hay-ve-tinh-yeu-tuoi-hoc-tro.jpg'),
(5, 'Văn hóa - Tôn giáo', 'https://popinnow.com/wp-content/uploads/2016/08/organizational-culture.jpg'),
(6, 'Văn học', 'http://www.trendingpackaging.com/wp-content/uploads/2016/05/old-books-32.jpg'),
(7, 'Kinh tế - Tài chính', 'https://chesterscommercial.com/wp-content/uploads/2017/03/Economy.jpg'),
(8, 'Kỹ năng mềm ', 'https://merojob.com/media/header_img/xsoft_skills.jpg.pagespeed.ic.sIyUhIp9wG.jpg'),
(9, 'Khoa học viễn tưởng', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQakj76xwRdl0UIQrJ4OYjPVryEjGufkq-RNzixRpG30125P9-y');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `eBookID` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `eCategory` int(11) NOT NULL,
  `CoverImg` varchar(200) NOT NULL,
  `Author` varchar(200) NOT NULL,
  `ContentUrl` varchar(255) NOT NULL,
  `PublishDay` date NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `Rate` int(10) NOT NULL,
  `ViewsNumber` int(11) NOT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`eBookID`, `Title`, `eCategory`, `CoverImg`, `Author`, `ContentUrl`, `PublishDay`, `Description`, `Rate`, `ViewsNumber`, `Status`) VALUES
(2, 'Cà phê cùng Tony', 8, 'http://isach.info/images/story/cover/ca_phe_cung_tony__tony_buoi_sang.jpg', 'Dale Carnegile', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '2008-05-31', 'Cà phê cùng Tony – How to win friends and Influence People của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia.', 5, 12, 'Hoàn thành'),
(3, 'Lịch sử  Thế Giới', 1, 'https://www.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/7/9786045855058.jpg', 'David Scofill', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Lịch sử Thế Giới – How to win friends and Influence People của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia.', 5, 9, 'Hoàn thành'),
(4, 'Đắc nhân tâm', 0, 'http://nhasachnguyenvancu.com/upload/products/dac_nha_tam_cuon_sach_dua_ban_toi_thanh_cong.jpg', 'Dale Carnegile', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đắc nhân tâm – How to win friends and Influence People của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia.', 5, 0, 'Hoàn thành'),
(15, '100 câu hỏi về sinh và tử', 1, 'http://sachcuonline.vn/image/cache/data/sach/lich%20su%20chinh%20tri%20ton%20giao/100-cau-hoi-dap-sinh-tu-330x460.jpg', 'Huệ Cơ', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 28, 'Hoàn thành'),
(16, 'Điện Biên Phủ - Điểm Hẹn', 1, 'http://epub.ebookfull.net/wp-content/data/images/2276-dien-bien-phu-diem-hen-lich-su.jpg', 'Võ Nguyên Giáp', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 27, 'Hoàn thành'),
(17, 'Lịch sử nội chiến', 1, 'http://sachvui.com/cover2/2015/Viet-Nam-thoi-Tay-Son---Lich-su-noi-chien-1771---1802.jpg', 'Tạ Chí Đại Trường', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 26, 'Chưa Hoàn thành'),
(18, 'Triết học phương Tây', 1, 'https://sachsuthattphcm.com.vn/wp-content/uploads/2018/03/1-2.jpg', 'Đinh Ngọc Thạch', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 25, 'Hoàn thành'),
(19, 'Chiến sĩ và Tự do HÒa bình', 1, 'https://downloadsach.com/wp-content/uploads/2016/04/chien-si-tu-do-va-hoa-binh-208x300.jpg', 'Đinh Ngọc Thạch', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 30, 'Hoàn thành'),
(20, 'Liên minh sai lầm', 1, 'http://fs.chungta.com/Files/14124E6776864C6D8FB32525A6F38DAA/image=jpeg/c3206b37b687434eac51c6e46bae45d9/d261983d.jpg', 'Đinh Ngọc Thạch', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 35, 'Hoàn thành'),
(21, 'Lịch sử chính trị', 1, 'https://s-media-cache-ak0.pinimg.com/originals/7f/a1/a0/7fa1a07e969045e0895b120d478f77c4.png', 'Đinh Ngọc Thạch', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 35, 'Hoàn thành'),
(22, 'Lịch sử Việt Nam', 1, 'https://sachsuthattphcm.com.vn/wp-content/uploads/2018/01/6-1.jpg', 'Đinh Ngọc Thạch', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 35, 'Hoàn thành'),
(23, 'Vua trẻ trong lịch sử', 1, 'http://sachvui.com/cover/2017/vua-tre-trong-lich-su-viet-nam.jpg', 'Đinh Ngọc Thạch', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Đến thời cận đại, do sự phát triển nhanh chóng về khoa học kỹ thuật, nhiều nước phương Tây đã trở thành những quốc gia phát triển về mặt kinh tế và hùng mạnh về quân sự. Cùng với việc biến hầu hết các nước ở Á, Phi, Mỹ La Tinh thành thuộc địa của các cường quốc châu Âu, văn minh phương Tây đã truyền bá khắp thế giới.', 4, 3, 'Hoàn thành'),
(24, 'Tâm lý học căn bản', 2, 'https://gacsach.com/sites/gacsach.com/files/styles/book310/public/images/6138/17437_23844.jpg?itok=dxHV1wq0', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 40, 'Hoàn thành'),
(25, 'Phân tâm học', 2, 'http://image.dlib.vn/libedu/document/thumbnail/2015/20150728/thuvienbinhduong/tvs_thuvienbinhduong/135x160/918276185.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 27, 'Hoàn thành'),
(26, 'Tâm lý học thực nghiệm', 2, 'http://kilopad.com/uploaded/book-cover/2014/05/10/34TamLyHocThucNgiem.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 26, 'Hoàn thành'),
(27, 'Những đòn trog tâm lý thuyết phục', 2, 'https://1tach.com/data/news/7038/07-nhung-cuon-sach-hay-tam-ly-hoc-1tach.com.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 52, 'Hoàn thành'),
(28, 'Ai lấy miếng pho mát của tôi', 2, 'https://sachchat.net/wp-content/uploads/2016/12/Ai-lay-mieng-phomat-cua-toi-250x353.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 40, 'Hoàn thành'),
(29, 'Tâm lý bầy đàn', 2, 'https://factsandfiguresftu2.files.wordpress.com/2012/04/1330860532518508549_574_574.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 25, 'Hoàn thành'),
(30, 'Tâm lý học phát triển', 2, 'http://nxbdhsp.edu.vn/upload/12589/20160329/ch%C3%BA%20%C3%BD.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 25, 'Hoàn thành'),
(31, 'Tâm lý học tư pháp', 2, 'http://data.lib.hutech.edu.vn/BookImg/45031.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Tâm Lý Học căn bản nhằm giúp bạn đọc là sinh viên, nghiên cứu sinh v.v... cùng đông đảo độc giả phát huy khả năng vận dụng tâm lý học để tìm hiểu xã hội chúng ta đang sống. Các tài liệu được trình bày trong nhiều vấn đề rất trọn vẹn ý nghĩa và dễ hiểu. Một chương kết thúc bằng một tóm lược cô đọng và một loạt các câu hỏi ôn tập về nội dung. Độc giả sẽ có thể tự đánh giá mức độ tiếp thu cũng như sự am hiểu về nội dung đã học', 3, 29, 'Hoàn thành'),
(32, 'Bí mật bị thời gian vùi lấp', 3, 'https://i.pinimg.com/564x/21/e7/17/21e717fe618bc4bf7f3db507dc9cd256.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 29, 'Hoàn thành'),
(33, 'Nghề làm phi', 3, 'https://a.wattpad.com/cover/69662996-352-k681801.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 36, 'Hoàn thành'),
(34, 'Kẻ may mắn', 3, 'http://sstruyen.com/images/story/Ke-May-Man.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 37, 'Hoàn thành'),
(35, 'Mãi mãi là bao xa ', 3, 'http://webtruyen.com/public/images/maimailabaoxavbpWM7YzEa.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 37, 'Hoàn thành'),
(36, 'Sẽ có thiên thần thay anh yêu em', 3, 'http://a9.vietbao.vn/images/vn905/Truyen_Hay/50857925_Secothienthanthayanhyeuem.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 37, 'Hoàn thành'),
(37, 'Thù đồ', 3, 'http://www.dtv-ebook.com/images/truyen-online/ebook-thu-do-full-prc-pdf-epub.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 37, 'Hoàn thành'),
(38, 'Nơi nào hạ mát', 3, 'http://i.imgur.com/hFMR2RD.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 37, 'Hoàn thành'),
(39, 'Chờ em lớn nhé được không', 3, 'https://www.fahasa.com/media/catalog/product/cache/1/small_image/270x364/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled-1_5_1.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 37, 'Hoàn thành'),
(40, 'Quá trẻ để chết', 8, 'https://topxephang.com/wp-content/uploads/2018/02/qua-tre-de-chet-hanh-trinh-nuoc-my.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 45, 'Hoàn thành'),
(41, 'Nhà giả kim', 8, 'https://s-media-cache-ak0.pinimg.com/originals/64/52/32/645232d1d58128c17b92c56e8d80823a.jpg', 'Dragon Night', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 103, 'Hoàn thành'),
(42, 'Làm chủ tư duy thay đổi vận mệnh', 8, 'https://www.sosanh24h.com/wp-content/themes/ssg_online/data/icon/5/85/lam-chu-tu-duy-thay-doi-van-menh.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 101, 'Hoàn thành'),
(43, 'Tôi tài giỏi bạn cũng thế', 8, 'http://static.nhasachphuongnam.com/images/thumbnails/201408_thumb/toi-tai-gioi-ban-cung-the.400x550.w.b.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 112, 'Hoàn thành'),
(44, 'Tuổi trẻ đáng giá bao nhiêu', 8, 'https://www.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_119757.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 113, 'Hoàn thành'),
(45, 'Mãi mãi tuổi 20', 8, 'http://webtruyen.com/public/images/maimaituoihaimuoixYXRYZ6XTD.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 108, 'Hoàn thành'),
(46, 'Đừng bao giờ đi ăn một mình', 8, 'https://www.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/8/9/8934974137313.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 108, 'Hoàn thành'),
(47, 'Suy nghĩ ngược', 8, 'http://static.nhasachphuongnam.com/images/thumbnails/201704_thumb/suy-nghi-nguoc.450x652.w.b.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 90, 'Hoàn thành'),
(48, 'Khi ta thay đổi Thế Giới sẽ đổi thay', 8, 'https://www.sachkhaitam.com/Data/Sites/1/Product/3372/khi-ta-thay-doi-the-gioi-se-doi-thay.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 93, 'Hoàn thành'),
(49, 'Đời thay đổi khi ta đổi thay', 8, 'http://static.nhasachphuongnam.com/images/thumbnails/201503_thumb/doi-thay-doi-khi-chung-ta-thay-doi-t1.450x652.w.b.jpg', 'Adam Khoo', 'https://drive.google.com/uc?export=download&id=1_M3Fsstlgc-vUVSPKzPox9ZTcjeNoVuR', '0000-00-00', 'Bí mật bị thời gian vùi lấp là một trong những tác phẩm nổi tiếng của Nhiên tình thiên hậu Đồng Hoa. Một câu chuyện yêu thương dường như rất đỗi bình thường nhưng đều khiến lòng ai đấy dậy sóng. Không chỉ bởi đôi chỗ vụn vặt, vài tình huống dường như lấy câu chuyện rất chung của những năm tháng thanh xuân để viết lên, mà Đồng Hoa còn khéo léo khơi dậy ký ức về “Tòa Thương thành” trong tim mỗi người.', 3, 99, 'Hoàn thành');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `ebook_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `user_name`, `ebook_id`, `action`, `time`) VALUES
(8, '1160951517380426', 'Văn Nhật', 44, 'đã đọc', '2018-04-16 09:07:14'),
(9, '1160951517380426', 'Văn Nhật', 48, 'đã đọc', '2018-04-17 21:57:27'),
(10, '1160951517380426', 'Văn Nhật', 47, 'đã đọc', '2018-04-17 21:58:36'),
(11, '1160951517380426', 'Văn Nhật', 43, 'đã đọc', '2018-04-17 22:24:45'),
(12, '1160951517380426', 'Văn Nhật', 43, 'đã đọc', '2018-04-17 22:25:49'),
(13, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-20 14:00:07'),
(14, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-20 14:00:43'),
(15, '1160951517380426', 'Văn Nhật', 44, 'đã đọc', '2018-04-20 21:35:55'),
(16, '1160951517380426', 'Văn Nhật', 44, 'đã đọc', '2018-04-20 21:36:30'),
(17, '1160951517380426', 'Văn Nhật', 45, 'đã đọc', '2018-04-20 21:37:29'),
(18, '1160951517380426', 'Văn Nhật', 44, 'đã đọc', '2018-04-20 21:56:24'),
(20, '1160951517380426', 'Văn Nhật', 44, 'đã đọc', '2018-04-20 22:03:40'),
(21, '1160951517380426', 'Văn Nhật', 48, 'đã đọc', '2018-04-20 22:05:15'),
(22, '1160951517380426', 'Văn Nhật', 46, 'đã đọc', '2018-04-20 22:18:42'),
(23, '1160951517380426', 'Văn Nhật', 43, 'đã đọc', '2018-04-20 22:19:17'),
(24, '1160951517380426', 'Văn Nhật', 41, 'đã đọc', '2018-04-20 22:19:26'),
(25, '1160951517380426', 'Văn Nhật', 27, 'đã đọc', '2018-04-20 22:19:34'),
(26, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 11:39:19'),
(27, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 11:46:06'),
(28, '1160951517380426', 'Văn Nhật', 27, 'đã đọc', '2018-04-21 11:46:33'),
(29, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 12:00:46'),
(30, '1160951517380426', 'Văn Nhật', 41, 'đã đọc', '2018-04-21 12:21:01'),
(31, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 12:24:42'),
(32, '1160951517380426', 'Văn Nhật', 41, 'đã đọc', '2018-04-21 12:25:07'),
(33, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 12:26:03'),
(34, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 12:27:19'),
(35, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 12:34:25'),
(36, '1160951517380426', 'Văn Nhật', 49, 'đã đọc', '2018-04-21 12:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'nhom7', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`eBookID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `eBookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
