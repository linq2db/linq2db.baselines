﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

