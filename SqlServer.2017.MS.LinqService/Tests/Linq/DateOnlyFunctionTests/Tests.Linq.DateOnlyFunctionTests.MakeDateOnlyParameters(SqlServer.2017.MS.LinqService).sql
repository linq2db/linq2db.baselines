BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DatePart(year, DATETIMEFROMPARTS(@year, [p].[ID], 1, 0, 0, 0, 0)) as [Year_1],
			DATETIMEFROMPARTS(@year, [p].[ID], 1, 0, 0, 0, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Year_1] = 2010 AND [t].[Year_1] IS NOT NULL

