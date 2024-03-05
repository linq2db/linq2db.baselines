BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @year Int -- Int32
SET     @year = 2010
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart('yyyy', DateSerial(CVar(?), [t].[ID], 1)) as [Year_1],
			DateSerial(CVar(?), [t].[ID], 1) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

