BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @month Int32
SET     @month = 1

SELECT
	STR_TO_DATE(Concat(CAST(2010 + `t`.`ID` AS CHAR(4)), '-', LPad(CAST(@month AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `t`

