BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	DATETIMEFROMPARTS(@year, [t].[ID], 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIMEFROMPARTS(@year, [t].[ID], 1, 0, 0, 0, 0)) = 2010

