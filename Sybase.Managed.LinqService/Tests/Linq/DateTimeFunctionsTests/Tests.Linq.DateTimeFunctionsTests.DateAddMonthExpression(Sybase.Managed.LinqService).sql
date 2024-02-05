BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	DateAdd(month, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

