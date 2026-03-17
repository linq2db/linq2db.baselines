-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(CAST(Power(`p`.`MoneyValue`, CAST(3 AS DECIMAL(29, 10))) AS DECIMAL(29, 10))) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0

