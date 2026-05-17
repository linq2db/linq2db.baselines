-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval 41 Second))
FROM
	`LinqDataTypes` `t`

