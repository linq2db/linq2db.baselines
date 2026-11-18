-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateDiff_Big('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])) + DateDiff_Big('ms', DateAdd('n', DateDiff_Big('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('n', 100, [t].[DateTimeValue])) / 60000
FROM
	[LinqDataTypes] [t]

