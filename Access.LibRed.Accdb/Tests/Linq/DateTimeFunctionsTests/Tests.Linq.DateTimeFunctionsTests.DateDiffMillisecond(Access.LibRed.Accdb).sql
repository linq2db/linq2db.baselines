-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DATEDIFF('ms', [t].[DateTimeValue], DateAdd('ms', 2023456789, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

