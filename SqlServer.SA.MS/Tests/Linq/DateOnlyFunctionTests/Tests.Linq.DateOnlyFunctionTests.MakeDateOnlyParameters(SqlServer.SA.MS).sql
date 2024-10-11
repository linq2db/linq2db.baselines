BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DATETIMEFROMPARTS(@year, [t].[ID], 1, 0, 0, 0, 0) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	DatePart(year, [t_1].[c1]) = 2010

