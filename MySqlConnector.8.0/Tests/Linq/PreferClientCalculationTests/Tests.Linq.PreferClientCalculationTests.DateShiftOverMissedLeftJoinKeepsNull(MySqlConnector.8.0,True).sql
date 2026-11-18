-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Date_Add(`j`.`Date`, Interval (-`e`.`Value1`) Day),
	Date_Add(`j`.`Date`, Interval -1 Day)
FROM
	`TranslatedMemberEntity` `e`
		LEFT JOIN `TranslatedMemberEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

