BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-01-01') as Date)
FROM
	`LinqDataTypes` `t`

