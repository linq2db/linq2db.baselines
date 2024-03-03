BeforeExecute
-- Access AccessOleDb
DECLARE @year Integer -- Int32
SET     @year = 2010
DECLARE @year_1 Integer -- Int32
SET     @year_1 = 2010

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart('yyyy', DateSerial(CVar(@year), [t].[ID], 1)) as [Year_1],
			DateSerial(CVar(@year_1), [t].[ID], 1) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

