-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Type`,
	`p`.`FullName`
FROM
	`Issue4364_BaseThing` `x`
		INNER JOIN `Issue4364_Interaction` `i` ON `x`.`Id` = `i`.`ThingId`
		INNER JOIN `Issue4364_Person` `p` ON `i`.`PersonId` = `p`.`Id`
WHERE
	`x`.`Type` = 101 OR `x`.`Type` = 102
ORDER BY
	`x`.`Id`

