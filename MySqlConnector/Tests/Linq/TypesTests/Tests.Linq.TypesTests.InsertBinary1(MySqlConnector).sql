BeforeExecute
-- MySqlConnector MySql

DELETE   `_`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`ID` > 1000

BeforeExecute
-- MySqlConnector MySql
DECLARE @data Blob -- Binary
SET     @data = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BinaryValue`,
	`BoolValue`
)
VALUES
(
	1001,
	@data,
	1
)

BeforeExecute
-- MySqlConnector MySql

DELETE   `_`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`ID` > 1000

