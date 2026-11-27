-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`k_1`.`Id`,
	`k_1`.`Number`,
	`k_1`.`StatusBitmask`,
	`k_1`.`StatusBitmask` & 128,
	Coalesce(`g_1`.`StatusBitmask`, 0) & 128
FROM
	`TupleJoinPerson` `k_1`
		LEFT JOIN `TupleJoinStudent` `g_1` ON `k_1`.`Id` = `g_1`.`Id` AND CAST(`k_1`.`Number` AS CHAR(11)) = `g_1`.`Number`

