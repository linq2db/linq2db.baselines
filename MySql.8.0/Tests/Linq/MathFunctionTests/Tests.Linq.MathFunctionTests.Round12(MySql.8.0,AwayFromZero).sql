BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Round(`t`.`MoneyValue`, 1) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0 AND `t_1`.`c1` <> 7

