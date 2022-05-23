BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @dateTime DateTime
SET     @dateTime = CAST('1992-01-11T01:11:21.100' AS DATETIME)

SELECT TOP (@take)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @dateTime DateTime
SET     @dateTime = CAST('1993-01-11T01:11:21.100' AS DATETIME)

SELECT TOP (@take)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

