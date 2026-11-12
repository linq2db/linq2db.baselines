-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateValue(DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

