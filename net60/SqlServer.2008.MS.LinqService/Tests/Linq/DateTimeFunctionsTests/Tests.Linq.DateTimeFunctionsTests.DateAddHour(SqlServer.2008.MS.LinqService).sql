BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

