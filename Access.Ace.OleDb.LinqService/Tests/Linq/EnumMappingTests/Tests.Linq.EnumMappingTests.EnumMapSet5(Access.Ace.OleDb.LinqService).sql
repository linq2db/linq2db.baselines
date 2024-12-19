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
	11
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @TestField Integer -- Int32
SET     @TestField = 12

UPDATE
	[LinqDataTypes] [r]
SET
	[r].[BigIntValue] = @TestField
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 11

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[r].[BigIntValue]
FROM
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

