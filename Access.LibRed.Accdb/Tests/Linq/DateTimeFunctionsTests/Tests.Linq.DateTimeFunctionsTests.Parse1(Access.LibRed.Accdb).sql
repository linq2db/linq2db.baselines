-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateValue([d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart('d', [d].[DateTimeValue]) > 0

