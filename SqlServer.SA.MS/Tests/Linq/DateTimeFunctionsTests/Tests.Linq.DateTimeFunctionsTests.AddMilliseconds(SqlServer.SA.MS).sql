BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DateAdd(hour, 226 / 3600000, DateAdd(millisecond, Convert(Int, 226) % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

