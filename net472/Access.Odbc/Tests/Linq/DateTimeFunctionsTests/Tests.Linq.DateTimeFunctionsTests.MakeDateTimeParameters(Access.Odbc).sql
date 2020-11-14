BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @year_1 Int -- Int32
SET     @year_1 = 2010
DECLARE @year_1 Int -- Int32
SET     @year_1 = 2010

SELECT
	DateSerial(?, [p].[ID], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('yyyy', DateSerial(?, [p].[ID], 1)) = 2010

