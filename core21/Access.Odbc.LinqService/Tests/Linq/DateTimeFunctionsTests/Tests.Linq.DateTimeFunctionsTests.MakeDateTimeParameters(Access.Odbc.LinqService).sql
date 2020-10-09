BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @year_1 Int -- Int32
SET     @year_1 = 2010

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			DateSerial(?, [p].[ID], 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('yyyy', [t].[c1]) = 2010

