BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	12
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[BigIntValue] = 12

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

