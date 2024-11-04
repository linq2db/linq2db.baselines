BeforeExecute
-- SqlCe
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	CAST(CONVERT(NVarChar(10), DateAdd(month, @Date, [t].[DateTimeValue]), 101) AS DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

