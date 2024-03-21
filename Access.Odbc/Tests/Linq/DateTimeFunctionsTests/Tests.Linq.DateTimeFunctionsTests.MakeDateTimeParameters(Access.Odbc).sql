BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(?, [t].[ID], 1)) = 2010

