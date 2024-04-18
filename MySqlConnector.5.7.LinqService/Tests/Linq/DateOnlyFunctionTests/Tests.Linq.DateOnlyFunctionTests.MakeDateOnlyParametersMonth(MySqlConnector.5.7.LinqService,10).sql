BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-10-01') as Date)
FROM
	`LinqDataTypes` `t`

