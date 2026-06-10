-- MySql.8.0.MySqlConnector MySql80

SELECT
	`u`.`Id`
FROM
	`Users` `u`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmMembership` `t`
				INNER JOIN `Teams` `o` ON `o`.`Id` = `t`.`TeamId`
		WHERE
			`u`.`Id` = `t`.`UserId` AND `o`.`Name` = 'Team1'
	)



-- MySql.8.0.MySqlConnector MySql80

SELECT
	`u`.`Id`
FROM
	`Users` `u`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmLeadership` `t`
				INNER JOIN `Teams` `o` ON `o`.`Id` = `t`.`TeamId`
		WHERE
			`u`.`Id` = `t`.`UserId` AND `o`.`Name` = 'Team1'
	)



