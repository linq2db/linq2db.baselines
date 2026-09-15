-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`e`.`Id`,
	Abs(`j`.`Value1`)
FROM
	`ClientCalcEntity` `e`
		LEFT JOIN `ClientCalcEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

