BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`e`.`ID`,
	`p_1`.`SmallIntValue`
FROM
	(
		SELECT DISTINCT
			`t1`.`ID`,
			`t1`.`SmallIntValue`
		FROM
			`LinqDataTypes` `t1`
	) `e`
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				`p`.`ID`,
				`p`.`SmallIntValue`
			FROM
				`LinqDataTypes` `p`
			WHERE
				`p`.`ID` = `e`.`ID`
		) `p_1` ON 1=1

