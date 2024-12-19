BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	DatePart('h', DateAdd('h', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

