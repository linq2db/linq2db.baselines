-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Concat(`e`.`Str1`, '/', `e`.`StrReq`)
FROM
	`SqlConcatTestEntity` `e`
ORDER BY
	`e`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`SqlConcatTestEntity` `t1`

