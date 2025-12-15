-- Access.Jet.Odbc AccessODBC

SELECT
	CDate('2010-' + Format([t].[ID], String('0', 2)) + '-01 20:35:44')
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', CDate('2010-' + Format([t].[ID], String('0', 2)) + '-01 20:35:44')) = 2010

