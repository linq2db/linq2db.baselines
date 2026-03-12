-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

-- Access.Ace.Odbc AccessODBC
DECLARE @tt Int -- Int32
SET     @tt = 600000000

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	1001,
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

