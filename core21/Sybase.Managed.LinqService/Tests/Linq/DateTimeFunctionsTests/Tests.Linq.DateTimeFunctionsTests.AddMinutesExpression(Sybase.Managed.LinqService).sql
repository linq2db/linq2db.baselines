BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Integer -- Int32
SET     @p1 = -8

SELECT
	DateAdd(minute, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

