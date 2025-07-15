BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @separator VarChar(4) -- String
SET     @separator = ' => '

SELECT
	MAX(`g_1`.`Value4`),
	GROUP_CONCAT(`g_1`.`Value4` SEPARATOR @separator)
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`,
	`g_1`.`Value4`

