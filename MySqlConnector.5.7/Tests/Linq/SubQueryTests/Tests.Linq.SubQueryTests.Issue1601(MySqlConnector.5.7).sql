BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `t2`.`SUM_1` < 0 THEN 9
		ELSE `t2`.`SUM_1` + 8
	END,
	`t2`.`SUM_1` + `t2`.`SUM_1`
FROM
	`LinqDataTypes` `q`
		LEFT JOIN (
			SELECT
				SUM(`t1`.`MoneyValue`) as `SUM_1`
			FROM
				`LinqDataTypes` `t1`
		) `t2` ON 1=1

