BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Double
SET     @p_1 = 22

SELECT
	DateAdd(hour, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

