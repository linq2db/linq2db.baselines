BeforeExecute
-- SqlCe
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	DatePart(hour, DateAdd(hour, @Hour, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

