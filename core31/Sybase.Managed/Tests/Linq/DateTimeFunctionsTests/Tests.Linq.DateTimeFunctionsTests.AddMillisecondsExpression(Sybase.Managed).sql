BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 226

SELECT
	DateAdd(millisecond, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

