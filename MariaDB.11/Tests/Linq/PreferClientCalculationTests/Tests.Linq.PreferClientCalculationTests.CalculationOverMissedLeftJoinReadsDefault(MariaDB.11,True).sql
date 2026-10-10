-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Id`,
	`j`.`Value1`,
	Abs(Coalesce(`j`.`Value1`, 0) - 1),
	`j`.`Date`,
	`e`.`Date`
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
	Extract(year from Coalesce(`j`.`Date`, '0001-01-01'))
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

