-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

-- Access.Ace.Odbc AccessODBC

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

-- Access.Ace.Odbc AccessODBC
DECLARE @param Int -- Int32
SET     @param = 11

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
SELECT
	[r].[ID],
	?
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 11

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

