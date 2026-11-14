-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DATEDIFF('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

