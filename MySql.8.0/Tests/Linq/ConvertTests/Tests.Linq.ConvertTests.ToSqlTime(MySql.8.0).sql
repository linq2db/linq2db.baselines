BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Cast(Concat(Cast(Extract(hour from `t`.`DateTimeValue`) as CHAR(11)), ':01:01') as Time)
FROM
	`LinqDataTypes` `t`

