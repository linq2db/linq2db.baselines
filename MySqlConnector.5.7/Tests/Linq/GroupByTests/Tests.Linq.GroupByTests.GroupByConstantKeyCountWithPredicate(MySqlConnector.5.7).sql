-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(CASE
		WHEN `t`.`Status` = 3 THEN 1
		ELSE NULL
	END)
FROM
	`GroupByConstantKeyTable` `t`
WHERE
	`t`.`MyOtherId` = 12
LIMIT 1

