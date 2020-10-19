BeforeExecute
-- SQLite.MS SQLite
DECLARE @p1  -- Int32
SET     @p1 = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p1

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [LinqDataTypes]
(
	[ID]
)
VALUES
(
	101
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p1  -- Int32
SET     @p1 = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p1

