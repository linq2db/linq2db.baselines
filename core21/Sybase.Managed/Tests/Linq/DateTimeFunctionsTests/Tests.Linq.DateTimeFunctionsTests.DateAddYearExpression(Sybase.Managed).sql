BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Double
SET     @p_1 = 11

SELECT
	DateAdd(year, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

