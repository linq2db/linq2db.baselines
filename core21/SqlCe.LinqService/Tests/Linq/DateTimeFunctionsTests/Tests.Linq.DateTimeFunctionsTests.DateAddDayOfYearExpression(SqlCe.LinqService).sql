BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 3

SELECT 
	DateAdd(dayofyear, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

