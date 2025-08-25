BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	(
		SELECT
			COUNT(DISTINCT `t1`.`Value1`)
		FROM
			`SampleClass` `t1`
	),
	(
		SELECT
			GROUP_CONCAT(`t2`.`Value1` SEPARATOR ' -> ')
		FROM
			`SampleClass` `t2`
	)
FROM
	`SampleClass` `t`

