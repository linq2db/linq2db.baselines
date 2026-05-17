-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	5
)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101

-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

