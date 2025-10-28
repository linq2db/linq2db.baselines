BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @ID Int32
SET     @ID = 100500
DECLARE @MoneyValue NewDecimal(4, 0) -- Decimal
SET     @MoneyValue = 3000
DECLARE @DateTimeValue Datetime -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 Datetime -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bool -- Boolean
SET     @BoolValue = NULL
DECLARE @GuidValue Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Int32
SET     @IntValue = 60
DECLARE @BigIntValue Int64
SET     @BigIntValue = NULL
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`DateTimeValue2`,
	`BoolValue`,
	`GuidValue`,
	`SmallIntValue`,
	`IntValue`,
	`BigIntValue`,
	`StringValue`
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @value2 NewDecimal(5, 0) -- Decimal
SET     @value2 = 13621
DECLARE @id Int32
SET     @id = 100500

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`SmallIntValue` = CAST(Floor(`t1`.`MoneyValue` / (@value2 / `t1`.`IntValue`)) AS SIGNED)
WHERE
	`t1`.`ID` = @id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @id Int32
SET     @id = 100500

SELECT
	`t1`.`SmallIntValue`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = @id
LIMIT 1

