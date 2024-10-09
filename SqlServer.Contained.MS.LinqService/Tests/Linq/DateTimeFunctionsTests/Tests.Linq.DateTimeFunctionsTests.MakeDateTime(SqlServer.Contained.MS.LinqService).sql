BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DATETIMEFROMPARTS(2010, [t].[ID], 1, 0, 0, 0, 0) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	DatePart(year, [t_1].[c1]) = 2010

