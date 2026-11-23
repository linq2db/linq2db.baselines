-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`ID`,
	`t`.`IntValue`
FROM
	`TestTable5` `t`
WHERE
	CAST(`t`.`IntValue` & 1 AS SIGNED) <> 0

