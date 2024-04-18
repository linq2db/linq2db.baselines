BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Cast(Concat(Cast(Extract(hour from `t`.`DateTimeValue`) as CHAR(11)), ':01:01') as Time)
FROM
	`LinqDataTypes` `t`

