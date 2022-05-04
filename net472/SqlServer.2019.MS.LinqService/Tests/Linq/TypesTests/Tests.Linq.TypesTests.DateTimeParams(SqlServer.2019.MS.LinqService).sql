BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @dateTime DateTime2
SET     @dateTime = '1992-01-11T01:11:21.1000000'

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @dateTime DateTime2
SET     @dateTime = '1993-01-11T01:11:21.1000000'

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

