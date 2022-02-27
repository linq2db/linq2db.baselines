BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Integer -- Int32
SET     @p1 = 3

SELECT
	DateAdd(dayofyear, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

