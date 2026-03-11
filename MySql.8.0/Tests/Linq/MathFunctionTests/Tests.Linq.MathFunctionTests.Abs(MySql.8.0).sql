-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Abs(`p`.`MoneyValue`) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` > 0

