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
	[BigIntValue],
	[IntValue]
)
VALUES
(
	101,
	12,
	10
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF([r].[BigIntValue] IS NOT NULL AND [r].[IntValue] IS NOT NULL, True, False),
	[r].[BigIntValue],
	[r].[IntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

