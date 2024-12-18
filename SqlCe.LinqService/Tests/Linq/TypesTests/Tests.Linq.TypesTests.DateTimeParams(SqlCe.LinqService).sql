BeforeExecute
-- SqlCe
DECLARE @dateTime DateTime
SET     @dateTime = '1992-01-11 01:11:21.100'

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime AND [t].[DateTimeValue] IS NOT NULL

BeforeExecute
-- SqlCe
DECLARE @dateTime DateTime
SET     @dateTime = '1993-01-11 01:11:21.100'

SELECT TOP (1)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime AND [t].[DateTimeValue] IS NOT NULL

