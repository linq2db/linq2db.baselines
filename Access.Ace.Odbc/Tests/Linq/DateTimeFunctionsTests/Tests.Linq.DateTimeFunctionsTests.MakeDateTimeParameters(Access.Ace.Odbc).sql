BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @year Int -- Int32
SET     @year = 2010
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	DateSerial(CVar(?), [t].[ID], 1)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(CVar(?), [t].[ID], 1)) = 2010

