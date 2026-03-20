-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`k_1`.`StatusBitmask` & 128,
	`g_1`.`StatusBitmask` & 128
FROM
	`i1084_person` `k_1`
		LEFT JOIN `i1084_student` `g_1` ON `k_1`.`Id` = `g_1`.`Id` AND CAST(`k_1`.`Number` AS CHAR(11)) = `g_1`.`Number`

