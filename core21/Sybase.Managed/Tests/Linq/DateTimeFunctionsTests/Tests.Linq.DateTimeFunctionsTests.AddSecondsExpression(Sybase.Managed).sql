BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Integer -- Int32
SET     @p1 = -35

SELECT
	DateAdd(second, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

