BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = -35

SELECT
	DateAdd(second, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

