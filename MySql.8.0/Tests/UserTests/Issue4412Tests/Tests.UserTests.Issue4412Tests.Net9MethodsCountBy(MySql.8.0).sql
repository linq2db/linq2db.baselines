-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`TestId`,
	COUNT(*)
FROM
	`TestTable` `g_1`
GROUP BY
	`g_1`.`TestId`
ORDER BY
	`g_1`.`TestId`

