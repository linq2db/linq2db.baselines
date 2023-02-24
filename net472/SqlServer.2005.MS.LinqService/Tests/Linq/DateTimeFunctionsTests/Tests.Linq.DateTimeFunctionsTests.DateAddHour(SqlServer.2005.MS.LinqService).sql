BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

