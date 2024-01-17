BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			Cast(Floor(`t`.`MoneyValue`) as SIGNED) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` > 0

