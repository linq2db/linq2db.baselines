﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Length(`t`.`BinaryValue`)
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1
LIMIT 1

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @BinaryValue Blob -- Binary
SET     @BinaryValue = NULL

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

