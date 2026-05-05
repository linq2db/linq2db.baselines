-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`e`.`Id`
FROM
	`ConcatTestEntity` `e`
WHERE
	Concat(CAST(`e`.`Num` AS CHAR(11)), '-', Coalesce(`e`.`StrReq`, '')) = '100-Programmer'

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`ConcatTestEntity` `t1`

