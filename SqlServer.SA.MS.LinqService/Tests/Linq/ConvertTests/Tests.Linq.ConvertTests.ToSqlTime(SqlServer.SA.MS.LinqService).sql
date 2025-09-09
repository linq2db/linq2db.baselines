BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	CAST(CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + N':01:01' AS Time)
FROM
	[LinqDataTypes] [t]

