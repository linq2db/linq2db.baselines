BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(dayofyear, @Value, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

