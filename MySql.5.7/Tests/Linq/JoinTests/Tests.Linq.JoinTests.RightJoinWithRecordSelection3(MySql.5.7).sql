-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`f`.`Id`,
	`ft`.`Id`,
	`ft`.`FactId`,
	`ft`.`Name`
FROM
	`Tag` `ft`
		RIGHT JOIN `Fact` `f` ON `ft`.`FactId` = `f`.`Id`
WHERE
	`f`.`Id` > 3

