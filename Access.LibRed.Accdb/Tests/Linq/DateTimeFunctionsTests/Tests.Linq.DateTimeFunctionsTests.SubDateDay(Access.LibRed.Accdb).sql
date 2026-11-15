-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateDiff_Big('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue])) / 86400000
FROM
	[LinqDataTypes] [t]

