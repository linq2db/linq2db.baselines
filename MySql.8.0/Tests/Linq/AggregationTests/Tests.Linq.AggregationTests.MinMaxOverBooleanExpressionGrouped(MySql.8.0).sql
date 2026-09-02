-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`g_1`.`ItemId`,
	MAX(CASE
		WHEN `g_1`.`Value` = '10' THEN 1
		ELSE 0
	END),
	MIN(CASE
		WHEN `g_1`.`Value` = '10' THEN 1
		ELSE 0
	END)
FROM
	`ItemValue` `g_1`
GROUP BY
	`g_1`.`ItemId`
ORDER BY
	`g_1`.`ItemId`

