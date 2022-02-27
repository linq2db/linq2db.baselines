BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Integer -- Int32
SET     @p1 = 5

SELECT
	DateAdd(day, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

