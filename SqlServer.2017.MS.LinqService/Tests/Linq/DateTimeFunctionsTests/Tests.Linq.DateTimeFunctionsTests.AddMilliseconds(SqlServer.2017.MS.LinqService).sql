BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateAdd(hour, 226 / 3600000, DateAdd(millisecond, Convert(Int, 226) % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

