-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateDiff_Big('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])) + DateDiff_Big('ms', DateAdd('s', DateDiff_Big('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('n', 100, [t].[DateTimeValue])) / 1000
FROM
	[LinqDataTypes] [t]

