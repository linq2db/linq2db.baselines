-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`leftTag`.`Id`,
	`leftTag`.`FactId`,
	`leftTag`.`Name`
FROM
	`Fact` `t1`
		LEFT JOIN `Tag` `leftTag` ON `t1`.`Id` = `leftTag`.`FactId`
WHERE
	`t1`.`Id` > 3
ORDER BY
	`t1`.`Id`

