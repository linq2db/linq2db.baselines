BeforeExecute
-- SqlServer.2005
DECLARE @dateTime DateTime
SET     @dateTime = CAST('1992-01-11T01:11:21.100' AS DATETIME)

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

BeforeExecute
-- SqlServer.2005
DECLARE @dateTime DateTime
SET     @dateTime = CAST('1993-01-11T01:11:21.100' AS DATETIME)

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

