BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(hour, 226 / 3600000, DateAdd(millisecond, 226 % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2012

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

