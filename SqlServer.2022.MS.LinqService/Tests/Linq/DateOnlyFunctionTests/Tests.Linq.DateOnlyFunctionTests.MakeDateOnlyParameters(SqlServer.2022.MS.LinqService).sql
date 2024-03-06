BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'2010-'

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart(year, Convert(Date, @p + format([t].[ID], 'd2') + N'-01')) as [Year_1],
			Convert(Date, @p + format([t].[ID], 'd2') + N'-01') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

