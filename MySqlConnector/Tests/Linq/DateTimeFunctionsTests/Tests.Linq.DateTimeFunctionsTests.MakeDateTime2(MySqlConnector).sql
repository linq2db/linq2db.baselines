BeforeExecute
-- MySqlConnector MySql

SELECT
	`t_1`.`ID`
FROM
	(
		SELECT
			Extract(year from Cast(Concat('2010-', Lpad(`t`.`ID`,2,'0'), '-01 20:35:44') as DateTime)) as `Year_1`,
			`t`.`ID`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`Year_1` = 2010

