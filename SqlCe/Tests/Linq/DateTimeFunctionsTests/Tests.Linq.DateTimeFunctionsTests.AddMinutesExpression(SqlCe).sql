BeforeExecute
-- SqlCe
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart(minute, DateAdd(minute, @Minute, [t].[DateTimeValue])) as [Minute_1]
FROM
	[LinqDataTypes] [t]

