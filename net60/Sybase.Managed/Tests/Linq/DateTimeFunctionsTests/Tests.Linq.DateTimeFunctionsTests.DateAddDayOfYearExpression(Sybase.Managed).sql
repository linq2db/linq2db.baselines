BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 3

SELECT
	DateAdd(dayofyear, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

