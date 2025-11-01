-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(year, @Value, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

