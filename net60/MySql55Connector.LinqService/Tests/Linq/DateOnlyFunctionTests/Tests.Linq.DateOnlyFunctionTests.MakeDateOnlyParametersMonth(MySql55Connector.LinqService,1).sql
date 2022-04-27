BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Cast(Concat(Cast((2010 + `t`.`ID`) as CHAR(11)), '-01-01') as Date)
FROM
	`LinqDataTypes` `t`

