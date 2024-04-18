BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-01-01') as Date)
FROM
	`LinqDataTypes` `t`

