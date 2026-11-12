-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateSerial(2010, [t].[ID], 1)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(2010, [t].[ID], 1)) = 2010

