BeforeExecute
-- MySql MySql.Official MySql

DELETE   `_`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`ID` > 1000

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DELETE   `_`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`ID` > 1000

