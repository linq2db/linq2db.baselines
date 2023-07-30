BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-01-01') as Date)
FROM
	`LinqDataTypes` `t`

