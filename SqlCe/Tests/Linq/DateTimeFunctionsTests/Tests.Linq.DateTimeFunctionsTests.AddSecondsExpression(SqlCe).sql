-- SqlCe
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	DatePart(second, DateAdd(second, @Second, [t].[DateTimeValue])) as [Second_1]
FROM
	[LinqDataTypes] [t]

