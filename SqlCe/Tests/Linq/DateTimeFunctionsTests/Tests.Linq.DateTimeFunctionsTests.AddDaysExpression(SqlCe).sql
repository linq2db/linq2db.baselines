-- SqlCe
DECLARE @Date Int -- Int32
SET     @Date = 5

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(day, @Date, [t].[DateTimeValue]), 101) AS DateTime)
FROM
	[LinqDataTypes] [t]

