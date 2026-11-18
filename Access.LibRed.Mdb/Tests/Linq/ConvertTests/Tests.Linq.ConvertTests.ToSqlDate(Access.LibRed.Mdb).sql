-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateValue(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01')
FROM
	[LinqDataTypes] [t]

