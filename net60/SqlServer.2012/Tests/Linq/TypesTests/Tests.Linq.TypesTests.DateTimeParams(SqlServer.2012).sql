BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @dateTime DateTime2
SET     @dateTime = '1992-01-11T01:11:21.1000000'

SELECT TOP (@take)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @dateTime DateTime2
SET     @dateTime = '1993-01-11T01:11:21.1000000'

SELECT TOP (@take)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

