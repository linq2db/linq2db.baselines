BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	CONVERT(Date, DateAdd(dayofyear, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

