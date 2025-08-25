BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01')
FROM
	[LinqDataTypes] [t]

