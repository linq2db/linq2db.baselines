BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Degrees(Cast(Floor(`p`.`MoneyValue`) as SIGNED)) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Cast(`t`.`c1` as DECIMAL(29, 10)) <> 0.10000000000000001

