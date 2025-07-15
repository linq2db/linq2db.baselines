BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(CASE
		WHEN `g_1`.`TimeStamp` > '2020-02-29 17:54:55.123' THEN 1
		ELSE NULL
	END)
FROM
	`Issue680Table` `g_1`
GROUP BY
	`g_1`.`TimeStamp`

