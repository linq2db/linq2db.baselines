BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	CStr([t].[ID])
FROM
	[LinqDataTypes] [t]
WHERE
	Len(CStr([t].[ID])) > 0

