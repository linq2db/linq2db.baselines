-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateValue(DateAdd('ww', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

