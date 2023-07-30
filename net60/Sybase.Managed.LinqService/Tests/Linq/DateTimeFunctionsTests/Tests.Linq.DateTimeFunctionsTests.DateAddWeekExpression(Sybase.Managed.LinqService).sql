BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	DateAdd(week, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

