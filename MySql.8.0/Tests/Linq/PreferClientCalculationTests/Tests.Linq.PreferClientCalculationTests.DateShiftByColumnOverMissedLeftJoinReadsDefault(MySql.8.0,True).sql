-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`e`.`Value1`,
	Date_Add(Coalesce(`j`.`Date`, '0001-01-01'), Interval `e`.`Value1` Day),
	Extract(year from Date_Add(Coalesce(`j`.`Date`, '0001-01-01'), Interval `e`.`Value1` Day)),
	Extract(day from Date_Add(Coalesce(`j`.`Date`, '0001-01-01'), Interval `e`.`Value1` Day))
FROM
	`TranslatedMemberEntity` `e`
		LEFT JOIN `TranslatedMemberEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

