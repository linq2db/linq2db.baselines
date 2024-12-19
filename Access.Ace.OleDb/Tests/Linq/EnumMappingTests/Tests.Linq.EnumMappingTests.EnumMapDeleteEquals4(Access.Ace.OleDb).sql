BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

