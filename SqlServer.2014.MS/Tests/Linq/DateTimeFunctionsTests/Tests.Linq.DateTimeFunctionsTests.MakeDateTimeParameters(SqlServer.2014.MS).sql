BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DATETIMEFROMPARTS(@year, [p].[ID], 1, 0, 0, 0, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

