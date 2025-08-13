BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	MAX(`g_1`.`Value1`),
	GROUP_CONCAT(`g_1`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`,
	`g_1`.`Value1`

