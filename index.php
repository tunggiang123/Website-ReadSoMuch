<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div>
		<?php 
				// 1. Chuỗi kết nối đến CSDL
		$ket_noi = mysqli_connect("remotemysql.com:3306", "MFjxl5C769", "4yl0CnAF1W", "MFjxl5C769");
		// 2. Viết câu lệnh SQL để lấy ra dữ liệu mong muốn
		$sql = "
		SELECT *
		FROM chu_de
		";
		// 3. Thực hiện truy vấn để lấy ra các dữ liệu mong muốn
		$chu_de = mysqli_query($ket_noi, $sql);
		// 4. Hiển thị dữ liệu mong muốn
		while ($row = mysqli_fetch_array($chu_de)) {
			;?>
			<table>
				<tr>					
					<td style="vertical-align: top;"><p c><i><?php echo $row["ten_chu_de"];?></i></p></td>
				</tr>
			</table>
			<hr>
			<?php
		}
		;?>
	</body>
	</html>