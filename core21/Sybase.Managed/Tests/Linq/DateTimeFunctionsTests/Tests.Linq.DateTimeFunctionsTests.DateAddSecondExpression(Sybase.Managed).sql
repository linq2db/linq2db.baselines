BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Double
SET     @p_1 = 41

SELECT
	DateAdd(second, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

