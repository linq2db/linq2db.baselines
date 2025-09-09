BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	CAST(CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + N':01:01' AS Time)
FROM
	[LinqDataTypes] [t]

