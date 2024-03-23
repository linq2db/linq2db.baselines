BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @Int32Field  -- Int32
SET     @Int32Field = 4

UPDATE
	[LinqDataTypes]
SET
	[IntValue] = @Int32Field
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[IntValue] = 3

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

