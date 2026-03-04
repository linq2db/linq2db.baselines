-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

