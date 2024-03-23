BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(year from Cast(Concat('2010-', Lpad(`t`.`ID`,2,'0'), '-01 20:35:44') as DateTime)) = 2010

