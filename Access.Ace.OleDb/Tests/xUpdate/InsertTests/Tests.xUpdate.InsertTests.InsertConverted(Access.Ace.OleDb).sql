-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

-- Access.Ace.OleDb AccessOleDb
DECLARE @tt BigInt -- Int64
SET     @tt = 600000000

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	1001,
	@tt
)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

