BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	CAST(DateAdd(month, @Date, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

