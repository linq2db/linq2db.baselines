BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

