-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DATEDIFF('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

