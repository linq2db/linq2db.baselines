﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 5000
DECLARE @MoneyValue NewDecimal(1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Datetime -- DateTime
SET     @DateTimeValue = '2018-01-03'
DECLARE @BoolValue Bool -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Blob -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = -2
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`BoolValue`,
	`GuidValue`,
	`BinaryValue`,
	`SmallIntValue`,
	`StringValue`
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@StringValue
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p Datetime -- DateTime
SET     @p = '2018-01-02'

SELECT
	Count(*)
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 5000 AND Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Day) < @p

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = 5000

