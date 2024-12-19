BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(Atan2(`p`.`MoneyValue` / 15, 0) * 15) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0.10000000000000001

