BeforeExecute
-- SQLite.Classic SQLite
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = 1

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = @BoolValue,
	[DateTimeValue] = CURRENT_TIMESTAMP
WHERE
	[LinqDataTypes].[ID] = 100000

