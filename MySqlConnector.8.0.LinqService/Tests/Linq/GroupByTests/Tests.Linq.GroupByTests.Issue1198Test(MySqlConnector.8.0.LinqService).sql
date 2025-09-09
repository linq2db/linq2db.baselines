BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(CASE
		WHEN `t`.`Status` = 3 THEN 1
		ELSE NULL
	END)
FROM
	`Issue1192Table` `t`
WHERE
	`t`.`MyOtherId` = 12
LIMIT 1

