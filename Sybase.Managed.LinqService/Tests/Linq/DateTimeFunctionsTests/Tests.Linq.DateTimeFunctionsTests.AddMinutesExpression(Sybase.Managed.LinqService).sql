BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = -8

SELECT
	DateAdd(minute, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

