-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateValue(DateAdd('ww', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

