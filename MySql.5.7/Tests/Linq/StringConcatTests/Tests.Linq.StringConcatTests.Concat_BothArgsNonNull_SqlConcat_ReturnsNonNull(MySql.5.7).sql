-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Id`
FROM
	`ConcatTestEntity` `e`
WHERE
	(CONCAT(`e`.`StrReq`, `e`.`StrReq`)) IS NOT NULL

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Str1`,
	`t1`.`Str2`,
	`t1`.`StrReq`,
	`t1`.`Num`
FROM
	`ConcatTestEntity` `t1`

