BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`f`.`Id`,
	`t`.`Id`,
	`t`.`FactId`,
	`t`.`Name`
FROM
	`Fact` `f`
		LEFT JOIN `Tag` `t` ON `t`.`FactId` = `f`.`Id`
WHERE
	`f`.`Id` > 3
ORDER BY
	`f`.`Id`

