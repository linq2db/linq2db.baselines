﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4,0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = NULL
DECLARE @GuidValue  -- Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue  -- Int32
SET     @IntValue = 60
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[DateTimeValue2],
	[BoolValue],
	[GuidValue],
	[SmallIntValue],
	[IntValue],
	[BigIntValue],
	[StringValue]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @value2 Decimal(5,0)
SET     @value2 = 13621
DECLARE @id  -- Int32
SET     @id = 100500

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = Cast(([LinqDataTypes].[MoneyValue] / (@value2 / Cast([LinqDataTypes].[IntValue] as Decimal(29,10)))) as SmallInt)
WHERE
	[LinqDataTypes].[ID] = @id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 100500
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[SmallIntValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 100500

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @id

