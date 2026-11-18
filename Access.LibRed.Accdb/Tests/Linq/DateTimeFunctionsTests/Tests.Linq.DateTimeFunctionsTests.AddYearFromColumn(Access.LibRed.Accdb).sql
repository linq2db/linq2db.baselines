-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateValue(DateAdd('yyyy', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

