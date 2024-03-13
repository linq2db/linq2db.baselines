BeforeExecute
-- SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'2010-'

SELECT
	[t_1].[ID]
FROM
	(
		SELECT
			DatePart(year, Convert(Date, @p + format([t].[ID], 'd2') + N'-01')) as [Year_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

