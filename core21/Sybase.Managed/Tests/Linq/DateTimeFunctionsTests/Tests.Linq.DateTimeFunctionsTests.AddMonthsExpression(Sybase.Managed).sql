BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Double
SET     @p_1 = -2

SELECT
	DateAdd(month, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

