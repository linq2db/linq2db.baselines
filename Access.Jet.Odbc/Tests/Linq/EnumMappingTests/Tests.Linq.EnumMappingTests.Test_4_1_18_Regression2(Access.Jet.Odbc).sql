-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

-- Access.Jet.Odbc AccessODBC

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue],
	[IntValue]
)
VALUES
(
	101,
	4,
	10
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[BigIntValue] IS NOT NULL AND [t1].[IntValue] IS NOT NULL,
	[t1].[BigIntValue],
	[t1].[IntValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 101

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

