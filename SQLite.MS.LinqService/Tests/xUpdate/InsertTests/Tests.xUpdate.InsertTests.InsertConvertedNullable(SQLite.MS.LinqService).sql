BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 1000

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @tt  -- Int64
SET     @tt = 600000000

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	1001,
	@tt
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 1000

