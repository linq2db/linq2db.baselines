BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	STR_TO_DATE(Concat(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(4)), '-10-01 20:35:44.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `p`

