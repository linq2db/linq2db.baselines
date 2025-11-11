-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`,
	`t1`.`Value4`
FROM
	`SampleClass` `t1`
ORDER BY
	`t1`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Coalesce(`t`.`Value2`, '')
FROM
	`SampleClass` `t`
ORDER BY
	`t`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Coalesce(`t`.`Value3`, '')
FROM
	`SampleClass` `t`
ORDER BY
	`t`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CONCAT_WS(' -> ', `t`.`Value3`, `t`.`Value1`, `t`.`Value2`)
FROM
	`SampleClass` `t`
ORDER BY
	`t`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CONCAT_WS(' -> ', `t`.`Value3`, `t`.`Value3`)
FROM
	`SampleClass` `t`
ORDER BY
	`t`.`Id`

