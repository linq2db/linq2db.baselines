BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @year Int -- Int32
SET     @year = 2010
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	DateSerial(?, [p].[ID], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('yyyy', DateSerial(?, [p].[ID], 1)) = 2010

