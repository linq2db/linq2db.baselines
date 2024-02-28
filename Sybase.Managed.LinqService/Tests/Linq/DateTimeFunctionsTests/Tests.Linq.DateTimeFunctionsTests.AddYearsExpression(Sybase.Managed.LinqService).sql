BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	DateAdd(year, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

