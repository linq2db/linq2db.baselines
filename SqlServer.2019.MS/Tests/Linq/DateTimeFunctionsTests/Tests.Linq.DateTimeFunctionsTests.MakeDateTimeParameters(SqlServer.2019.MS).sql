BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1320

SELECT
	[t_1].[ID],
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart(year, DateAdd(month, (@p + [t].[ID]) - 1, 0)) as [Year_1],
			[t].[ID],
			0 as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

