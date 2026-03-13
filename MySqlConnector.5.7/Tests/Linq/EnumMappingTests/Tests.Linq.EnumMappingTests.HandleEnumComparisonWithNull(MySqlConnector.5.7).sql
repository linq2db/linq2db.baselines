-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`Type`,
	`x`.`OwnerId`,
	`a_Owner`.`Id`,
	`a_Owner`.`Name`
FROM
	`Item` `x`
		LEFT JOIN `Owner` `a_Owner` ON `x`.`OwnerId` = `a_Owner`.`Id`

