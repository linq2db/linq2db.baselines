BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	DateAdd(day, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

