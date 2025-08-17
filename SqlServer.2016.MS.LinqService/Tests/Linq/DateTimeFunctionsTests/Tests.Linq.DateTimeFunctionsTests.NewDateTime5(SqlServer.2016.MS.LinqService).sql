BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]) + 1, 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]

