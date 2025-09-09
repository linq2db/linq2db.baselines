BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Date Integer -- Int32
SET     @Date = -2

SELECT
	CONVERT(Date, DateAdd(month, @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

