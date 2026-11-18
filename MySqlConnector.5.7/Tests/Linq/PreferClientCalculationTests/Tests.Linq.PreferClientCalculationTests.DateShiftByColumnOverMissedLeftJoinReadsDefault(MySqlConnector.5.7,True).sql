-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`e`.`Value1`,
	Date_Add(`j`.`Date`, Interval `e`.`Value1` Day),
	Extract(year from Date_Add(`j`.`Date`, Interval `e`.`Value1` Day)),
	Extract(day from Date_Add(`j`.`Date`, Interval `e`.`Value1` Day))
FROM
	`TranslatedMemberEntity` `e`
		LEFT JOIN `TranslatedMemberEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

