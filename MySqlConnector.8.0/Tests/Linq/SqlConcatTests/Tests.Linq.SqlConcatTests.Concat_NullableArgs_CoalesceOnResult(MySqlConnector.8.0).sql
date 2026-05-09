-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Concat(`e`.`Str1`, `e`.`Str2`)
FROM
	`SqlConcatTestEntity` `e`
ORDER BY
	`e`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`SqlConcatTestEntity` `t1`

