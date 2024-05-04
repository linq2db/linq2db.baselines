BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	CONVERT(Date, DateAdd(week, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

