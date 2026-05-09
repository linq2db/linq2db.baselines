-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	Concat(`t`.`Str1`, `t`.`Str2`, `t`.`StrReq`)
FROM
	`SqlConcatTestEntity` `t`
ORDER BY
	`t`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`SqlConcatTestEntity` `t1`

