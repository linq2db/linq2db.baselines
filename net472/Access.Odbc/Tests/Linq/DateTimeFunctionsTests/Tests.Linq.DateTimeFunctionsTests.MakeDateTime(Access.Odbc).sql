BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DateSerial(2010, [p].[ID], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('yyyy', DateSerial(2010, [p].[ID], 1)) = 2010

