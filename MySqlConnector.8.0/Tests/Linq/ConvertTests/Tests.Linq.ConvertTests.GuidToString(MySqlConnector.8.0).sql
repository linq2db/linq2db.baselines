-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @guid VarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	`t`.`GuidValue`
FROM
	`LinqDataTypes` `t`
WHERE
	Lower(CAST(`t`.`GuidValue` AS CHAR(36))) = @guid

