-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Type`,
	`x`.`OwnerId`,
	`a_Owner`.`Id`,
	`a_Owner`.`Name`
FROM
	`Item` `x`
		LEFT JOIN `Owner` `a_Owner` ON `x`.`OwnerId` = `a_Owner`.`Id`

