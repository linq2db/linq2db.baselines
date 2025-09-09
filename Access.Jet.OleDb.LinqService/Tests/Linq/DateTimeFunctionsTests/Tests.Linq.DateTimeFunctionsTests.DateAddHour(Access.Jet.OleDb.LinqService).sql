BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	DatePart('h', DateAdd('h', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

