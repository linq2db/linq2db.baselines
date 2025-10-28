BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Person` `t1`
		WHERE
			`t1`.`MiddleName` <> `t1`.`LastName` OR `t1`.`MiddleName` IS NULL
	) as `c1`

