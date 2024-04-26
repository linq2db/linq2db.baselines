BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p_1`.`c1`
FROM
	(
		SELECT
			CAST(Floor(`p`.`MoneyValue`) AS UNSIGNED) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `p_1`
WHERE
	`p_1`.`c1` > 0

