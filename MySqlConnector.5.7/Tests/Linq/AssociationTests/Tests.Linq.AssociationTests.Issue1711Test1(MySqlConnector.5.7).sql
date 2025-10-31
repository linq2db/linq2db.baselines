-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Id`
FROM
	`Entity1711` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Relationship1711` `a_relationship`
		WHERE
			`t`.`Id` = `a_relationship`.`EntityId`
	)

