-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Sign(`p`.`MoneyValue`) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0

