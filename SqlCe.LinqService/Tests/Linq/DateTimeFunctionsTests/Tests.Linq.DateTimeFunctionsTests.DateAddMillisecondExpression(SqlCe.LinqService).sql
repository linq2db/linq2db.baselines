BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(hour, @p / 3600000, DateAdd(millisecond, @p % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlCe

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

