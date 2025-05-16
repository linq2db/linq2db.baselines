BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Person` `t1`
		WHERE
			`t1`.`MiddleName` = `t1`.`LastName`
	) as `c1`

