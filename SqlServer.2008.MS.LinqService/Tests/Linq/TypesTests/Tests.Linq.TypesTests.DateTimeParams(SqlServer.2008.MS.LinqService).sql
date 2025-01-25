BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @dateTime DateTime
SET     @dateTime = CAST('1992-01-11T01:11:21.1000000' AS DATETIME2)

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @dateTime DateTime
SET     @dateTime = CAST('1993-01-11T01:11:21.1000000' AS DATETIME2)

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

