BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + N':01:01' AS Time)
FROM
	[LinqDataTypes] [t]

