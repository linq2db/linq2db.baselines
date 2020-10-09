BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Integer -- Int32
SET     @p1 = -2

SELECT 
	DateAdd(month, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

