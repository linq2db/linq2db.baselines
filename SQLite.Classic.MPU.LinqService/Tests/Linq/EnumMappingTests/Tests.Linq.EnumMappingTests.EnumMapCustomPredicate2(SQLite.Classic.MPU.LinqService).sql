BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @records  -- Int32
SET     @records = 1

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < 101 + @records

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TestField  -- Int64
SET     @TestField = 12

SELECT
	[entity].[ID],
	[entity].[BigIntValue],
	[entity].[IntValue]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = @TestField

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @records  -- Int32
SET     @records = 1

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < 101 + @records

