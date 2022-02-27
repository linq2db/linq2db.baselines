BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Integer -- Int32
SET     @p1 = -1

SELECT
	DateAdd(quarter, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

