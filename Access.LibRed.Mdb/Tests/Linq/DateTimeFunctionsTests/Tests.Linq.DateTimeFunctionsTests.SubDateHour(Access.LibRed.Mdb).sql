-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateDiff_Big('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue])) / 3600000
FROM
	[LinqDataTypes] [t]

