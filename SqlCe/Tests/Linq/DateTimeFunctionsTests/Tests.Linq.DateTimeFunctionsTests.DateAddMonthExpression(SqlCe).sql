-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(month, @Value, [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

