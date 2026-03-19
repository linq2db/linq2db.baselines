-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Number`,
	`t1`.`StatusBitmask`,
	`t1`.`StatusBitmask` & 128,
	`g_1`.`StatusBitmask` & 128
FROM
	`i1084_person` `t1`
		LEFT JOIN `i1084_student` `g_1` ON `t1`.`Id` = `g_1`.`Id` AND CAST(`t1`.`Number` AS CHAR(11)) = `g_1`.`Number`

