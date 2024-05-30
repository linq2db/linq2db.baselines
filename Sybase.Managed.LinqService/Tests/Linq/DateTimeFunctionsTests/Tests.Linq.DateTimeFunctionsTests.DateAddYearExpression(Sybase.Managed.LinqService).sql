BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 11

SELECT
	CONVERT(Date, DateAdd(year, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

