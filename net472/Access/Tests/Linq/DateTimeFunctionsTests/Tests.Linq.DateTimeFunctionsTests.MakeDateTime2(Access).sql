BeforeExecute
-- Access AccessOleDb

SELECT
	CDate('2010-' + CStr([p].[ID]) + '-1 20:35:44')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('yyyy', CDate('2010-' + CStr([p].[ID]) + '-1 20:35:44')) = 2010

