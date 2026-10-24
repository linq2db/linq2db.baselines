-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date_Add(`j`.`Date`, Interval (-`e`.`Value1`) Day),
	Date_Add(`j`.`Date`, Interval -1 Day)
FROM
	`TranslatedMemberEntity` `e`
		LEFT JOIN `TranslatedMemberEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

