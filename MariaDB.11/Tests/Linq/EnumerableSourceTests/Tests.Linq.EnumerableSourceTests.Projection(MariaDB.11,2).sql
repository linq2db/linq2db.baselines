BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	`t1`.`ID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	(
		SELECT 'Janet' AS `FirstName`, 3 AS `ID`, NULL AS `LastName`, NULL AS `MiddleName`, 'M' AS `Gender`
		UNION ALL
		SELECT 'Doe', 4, NULL, NULL, 'M') `t1`

