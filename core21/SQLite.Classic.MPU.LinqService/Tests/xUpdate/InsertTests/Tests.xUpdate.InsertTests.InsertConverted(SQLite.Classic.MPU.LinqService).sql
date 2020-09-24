BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 1000

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 1000

