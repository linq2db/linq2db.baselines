-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`e`.`Id`
FROM
	`ConcatTestEntity` `e`
WHERE
	Concat(Coalesce(`e`.`Str1`, ''), ' ', Coalesce(`e`.`StrReq`, ''), '!') = 'John Programmer!'

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`ConcatTestEntity` `t1`

