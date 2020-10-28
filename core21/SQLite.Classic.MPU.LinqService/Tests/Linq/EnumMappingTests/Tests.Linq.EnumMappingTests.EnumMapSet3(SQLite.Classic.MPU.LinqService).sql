BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p1  -- Int32
SET     @p1 = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	101,
	3
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[LinqDataTypes]
SET
	[IntValue] = 4
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[IntValue] = 3

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p1  -- Int32
SET     @p1 = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p1

