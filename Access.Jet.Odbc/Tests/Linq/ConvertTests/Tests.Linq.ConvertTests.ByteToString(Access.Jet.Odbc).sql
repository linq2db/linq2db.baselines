-- Access.Jet.Odbc AccessODBC

SELECT
	CStr([p].[ID])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[ID])) > 0

