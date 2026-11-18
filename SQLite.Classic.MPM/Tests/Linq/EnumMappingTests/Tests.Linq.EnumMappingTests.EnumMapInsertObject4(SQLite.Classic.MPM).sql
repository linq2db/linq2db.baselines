-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @TestField Integer -- Int64
SET     @TestField = 12
DECLARE @Int32Field Integer -- Int32
SET     @Int32Field = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue],
	[IntValue]
)
VALUES
(
	@Id,
	@TestField,
	@Int32Field
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

