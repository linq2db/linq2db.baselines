-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Id`,
	`j`.`Id`,
	`j`.`Value1`
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Date`,
	`t1`.`Flag`,
	`t1`.`Name`
FROM
	`MissedJoinEntity` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`j`.`Id`,
	`j`.`Value1`,
	`j`.`Date`,
	`j`.`Flag`,
	`j`.`Name`
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

