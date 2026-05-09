-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`e`.`Id`
FROM
	`SqlConcatTestEntity` `e`
ORDER BY
	Concat(`e`.`StrReq`, 'X')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`SqlConcatTestEntity` `t1`

