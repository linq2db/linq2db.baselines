-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Truncate(`p`.`MoneyValue`, 0) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0.1

