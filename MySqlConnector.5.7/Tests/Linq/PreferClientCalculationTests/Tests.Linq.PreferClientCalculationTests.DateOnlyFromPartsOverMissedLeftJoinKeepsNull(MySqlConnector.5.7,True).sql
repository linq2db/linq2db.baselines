-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	STR_TO_DATE(CONCAT(CAST(`j`.`Value1` AS CHAR(4)), '-', LPad(CAST(`j`.`Value1` AS CHAR(2)), 2, '0'), '-', LPad(CAST(`j`.`Value1` AS CHAR(2)), 2, '0'), ' 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f'),
	STR_TO_DATE(CONCAT(CAST(`j`.`Value1` AS CHAR(4)), '-', LPad(CAST(`j`.`Value1` AS CHAR(2)), 2, '0'), '-', LPad(CAST(`j`.`Value1` AS CHAR(2)), 2, '0'), ' 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`TranslatedMemberEntity` `e`
		LEFT JOIN `TranslatedMemberEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

