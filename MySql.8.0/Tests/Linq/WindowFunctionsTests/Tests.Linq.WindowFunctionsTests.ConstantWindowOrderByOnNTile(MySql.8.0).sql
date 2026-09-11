-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	NTILE(4) OVER ()
FROM
	`WindowFunctionTestEntity` `t`

