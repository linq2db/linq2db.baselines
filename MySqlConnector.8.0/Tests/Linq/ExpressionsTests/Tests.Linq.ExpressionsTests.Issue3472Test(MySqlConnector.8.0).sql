﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	(
		SELECT
			COUNT(*)
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = `t1`.`Id`
	)
FROM
	`Issue3472TableDC` `t1`

