BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

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
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

