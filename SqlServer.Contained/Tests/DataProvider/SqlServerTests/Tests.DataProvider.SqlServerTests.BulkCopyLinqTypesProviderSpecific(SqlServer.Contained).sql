INSERT BULK [dbo].[LinqDataTypes](ID, MoneyValue, DateTimeValue, BoolValue, GuidValue, BinaryValue, SmallIntValue)

-- SqlServer.Contained SqlServer.2019

DELETE [p]
FROM
	[dbo].[LinqDataTypes] [p]
WHERE
	[p].[ID] >= 4000

