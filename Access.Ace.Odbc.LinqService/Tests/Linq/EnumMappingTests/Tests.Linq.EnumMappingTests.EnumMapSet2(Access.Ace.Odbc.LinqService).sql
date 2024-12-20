BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC
DECLARE @TestField Int -- Int32
SET     @TestField = 12

UPDATE
	[LinqDataTypes] [r]
SET
	[r].[BigIntValue] = ?
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 11

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

