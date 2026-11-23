-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`ID`,
	`t`.`IntValue`
FROM
	`TestTable5` `t`
WHERE
	CAST(`t`.`IntValue` & 1 AS SIGNED) <> 0

