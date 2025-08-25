BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + N':01:01'
FROM
	[LinqDataTypes] [t]

