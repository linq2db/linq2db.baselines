-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateSerial(DatePart('yyyy', [t].[DateTimeValue]) + 1, 10, 1)
FROM
	[LinqDataTypes] [t]

