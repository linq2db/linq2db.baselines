-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(quarter, @Value, [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

