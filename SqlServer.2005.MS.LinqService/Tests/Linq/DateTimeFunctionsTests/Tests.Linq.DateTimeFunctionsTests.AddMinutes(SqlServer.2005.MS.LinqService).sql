BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

