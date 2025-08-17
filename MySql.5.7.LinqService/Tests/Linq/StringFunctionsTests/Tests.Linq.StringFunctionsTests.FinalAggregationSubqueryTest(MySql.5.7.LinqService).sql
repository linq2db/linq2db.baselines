BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

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

