BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Floor(((Exp(`t`.`MoneyValue` / 15) - Exp(-(`t`.`MoneyValue` / 15))) / (Exp(`t`.`MoneyValue` / 15) + Exp(-(`t`.`MoneyValue` / 15)))) * 15) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.10000000000000001

