BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`x`.`Id`,
			`x`.`FirstName`,
			`x`.`LastName`
		FROM
			`ComplexPerson` `x`
		WHERE
			`x`.`Id` < 10
		UNION
		SELECT
			`x_1`.`Id`,
			`x_1`.`FirstName`,
			`x_1`.`LastName`
		FROM
			`ComplexPerson` `x_1`
		WHERE
			`x_1`.`Id` < 20
	) `t1`

