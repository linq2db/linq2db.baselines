BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	Count(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`FirstName`
ORDER BY
	`t1`.`FirstName`

