BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1,0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue  -- Guid
SET     @GuidValue = Cast(x'00000000000000000000000000000000' as blob)
DECLARE @BinaryValue Binary(4)
SET     @BinaryValue = X'01020304'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 0

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[BoolValue],
	[GuidValue],
	[BinaryValue],
	[SmallIntValue]
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

