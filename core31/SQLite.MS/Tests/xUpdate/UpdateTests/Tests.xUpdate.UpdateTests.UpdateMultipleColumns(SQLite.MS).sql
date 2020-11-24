BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 1000
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 100

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	@ID,
	@MoneyValue,
	@SmallIntValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1001

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = 2000,
	[SmallIntValue] = 200
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID_1  -- Int32
SET     @ID_1 = 1001
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ID_1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @ID

