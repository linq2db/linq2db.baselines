BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0504030201'
DECLARE @ID  -- Int32
SET     @ID = 2

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
	[t].[ID] IN (1, 2)

