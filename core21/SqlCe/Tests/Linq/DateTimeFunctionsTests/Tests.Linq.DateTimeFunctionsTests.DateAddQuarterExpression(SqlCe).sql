BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = -1

SELECT 
	DateAdd(quarter, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

