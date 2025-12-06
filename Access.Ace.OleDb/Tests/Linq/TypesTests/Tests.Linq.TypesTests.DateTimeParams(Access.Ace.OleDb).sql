-- Access.Ace.OleDb AccessOleDb
DECLARE @dateTime Date -- DateTime
SET     @dateTime = #1992-01-11 01:11:21#

SELECT TOP 1
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

-- Access.Ace.OleDb AccessOleDb
DECLARE @dateTime Date -- DateTime
SET     @dateTime = #1993-01-11 01:11:21#

SELECT TOP 1
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

