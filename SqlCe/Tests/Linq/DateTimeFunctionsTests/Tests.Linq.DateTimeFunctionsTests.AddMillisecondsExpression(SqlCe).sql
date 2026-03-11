-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue]) as [c1]
FROM
	[LinqDataTypes] [t]

-- SqlCe

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

