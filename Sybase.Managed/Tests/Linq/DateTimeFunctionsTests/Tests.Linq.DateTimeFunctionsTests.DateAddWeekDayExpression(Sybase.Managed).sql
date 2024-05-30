BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CONVERT(Date, DateAdd(weekday, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

