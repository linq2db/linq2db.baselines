-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	RANK() OVER ()
FROM
	`WindowFunctionTestEntity` `t`

