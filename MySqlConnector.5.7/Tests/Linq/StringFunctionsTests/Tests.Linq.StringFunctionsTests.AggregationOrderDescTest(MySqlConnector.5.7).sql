BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	MAX(`g_1`.`Value1`),
	GROUP_CONCAT(`g_1`.`Value1` ORDER BY `g_1`.`Value1` DESC SEPARATOR ' -> ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`,
	`g_1`.`Value1`

