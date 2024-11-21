BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DATETIMEFROMPARTS(2010, [p].[ID], 1, 20, 35, 44, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

