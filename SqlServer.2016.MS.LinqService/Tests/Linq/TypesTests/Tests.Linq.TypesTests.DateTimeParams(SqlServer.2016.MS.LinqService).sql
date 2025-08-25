BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @dateTime DateTime
SET     @dateTime = DATETIME2FROMPARTS(1992, 1, 11, 1, 11, 21, 1000000, 7)

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @dateTime DateTime
SET     @dateTime = DATETIME2FROMPARTS(1993, 1, 11, 1, 11, 21, 1000000, 7)

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

