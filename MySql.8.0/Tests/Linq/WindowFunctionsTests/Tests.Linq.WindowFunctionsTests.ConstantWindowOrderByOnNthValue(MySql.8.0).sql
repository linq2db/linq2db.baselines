-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	NTH_VALUE(`t`.`IntValue`, 2) OVER ()
FROM
	`WindowFunctionTestEntity` `t`

