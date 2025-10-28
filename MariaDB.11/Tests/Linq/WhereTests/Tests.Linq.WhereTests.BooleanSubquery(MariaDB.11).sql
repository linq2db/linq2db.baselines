BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id`,
	`t`.`BoolValue`
FROM
	`WhereWithBool` `t`
WHERE
	(
		SELECT
			`x`.`BoolValue`
		FROM
			`WhereWithBool` `x`
		WHERE
			`x`.`Id` = 1
	)

