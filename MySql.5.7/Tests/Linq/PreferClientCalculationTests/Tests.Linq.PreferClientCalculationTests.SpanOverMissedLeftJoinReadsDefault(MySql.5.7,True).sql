-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`e`.`Id`,
	`j`.`Span`,
	`e`.`Span`
FROM
	`MissedSpanEntity` `e`
		LEFT JOIN `MissedSpanEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Span`
FROM
	`MissedSpanEntity` `t1`

