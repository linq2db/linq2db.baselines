BeforeExecute
-- SqlServer.2014

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DATETIMEFROMPARTS(2010, [p].[ID], 1, 0, 0, 0, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

