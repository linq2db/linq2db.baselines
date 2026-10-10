-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`e`.`Id`,
	CAST(Coalesce(`j`.`Value1`, 0) AS CHAR(11)),
	`j`.`Value1`
FROM
	`TranslatedMemberEntity` `e`
		LEFT JOIN `TranslatedMemberEntity` `j` ON `e`.`Id` + 1000 = `j`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Date`,
	`t1`.`Key`,
	`t1`.`Name`
FROM
	`TranslatedMemberEntity` `t1`

