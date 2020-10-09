BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

UPDATE
	[LinqDataTypes] [r]
SET
	[r].[BigIntValue] = 12
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 11

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1 
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

