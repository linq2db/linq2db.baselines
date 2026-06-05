-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	GROUP_CONCAT(`t1`.`Value2` ORDER BY `t1`.`Value1` DESC SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

