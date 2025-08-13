BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(day, @Value, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

