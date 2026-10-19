-- Access.Jet.OleDb AccessOleDb
SELECT
	DateValue(CDate(CStr([d].[DateTimeValue])))
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart('d', CDate(CStr([d].[DateTimeValue]))) > 0

