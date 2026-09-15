-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Id`,
	Abs(`j`.`Value1`)
FROM
	`ClientCalcEntity` `e`
		LEFT JOIN `ClientCalcEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

