-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	(
		SELECT
			`se`.`Value`
		FROM
			`StringAssociationValue` `se`
		WHERE
			`se`.`Id` = `t1`.`Id`
		LIMIT 1
	)
FROM
	`StringAssociationOwner` `t1`

