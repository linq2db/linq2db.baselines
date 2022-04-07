BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdataconnector`.`LinqDataTypes` `t1`

