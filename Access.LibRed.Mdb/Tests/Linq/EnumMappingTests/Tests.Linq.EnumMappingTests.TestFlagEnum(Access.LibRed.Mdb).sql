-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[TestTable5] [t]
WHERE
	([t].[IntValue] BAND 1) <> 0

