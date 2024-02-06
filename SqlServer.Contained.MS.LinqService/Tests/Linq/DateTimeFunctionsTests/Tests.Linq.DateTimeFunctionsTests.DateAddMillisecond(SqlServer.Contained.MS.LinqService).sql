BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	DateAdd(hour, 226 / 3600000, DateAdd(millisecond, 226 % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

