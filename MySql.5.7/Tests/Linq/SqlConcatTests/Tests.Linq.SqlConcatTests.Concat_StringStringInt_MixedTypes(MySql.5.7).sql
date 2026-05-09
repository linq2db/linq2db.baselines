-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`StrReq`
FROM
	`SqlConcatTestEntity` `e`
WHERE
	Concat(`e`.`StrReq`, ' 1') = 'Programmer 1'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`SqlConcatTestEntity` `t1`

