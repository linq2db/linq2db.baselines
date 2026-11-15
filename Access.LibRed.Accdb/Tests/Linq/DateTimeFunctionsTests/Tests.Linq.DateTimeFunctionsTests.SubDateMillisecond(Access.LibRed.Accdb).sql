-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateDiff_Big('ms', [t].[DateTimeValue], DateAdd('ms', 2023456789, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

