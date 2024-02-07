BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(hour, 226 / 3600000, DateAdd(millisecond, Convert(Int, 226) % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

