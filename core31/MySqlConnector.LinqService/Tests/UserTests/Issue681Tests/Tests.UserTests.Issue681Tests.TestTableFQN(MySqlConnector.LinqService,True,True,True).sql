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
	`testdata2`.`LinqDataTypes` `t1`

