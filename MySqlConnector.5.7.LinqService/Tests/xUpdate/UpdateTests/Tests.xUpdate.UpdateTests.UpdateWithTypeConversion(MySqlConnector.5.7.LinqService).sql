﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1001

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`SmallIntValue`
)
VALUES
(
	@ID,
	100,
	200
)

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`SmallIntValue` = CAST(Floor(`t`.`MoneyValue`) AS SIGNED),
	`t`.`MoneyValue` = CAST(`t`.`SmallIntValue` AS DECIMAL(29, 10))
WHERE
	`t`.`ID` = @id

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`SmallIntValue` = CAST(Floor(`t`.`MoneyValue`) AS SIGNED),
	`t`.`MoneyValue` = CAST(`t`.`SmallIntValue` AS DECIMAL(29, 10))
WHERE
	`t`.`ID` = @id

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1001

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = @id
LIMIT 2

