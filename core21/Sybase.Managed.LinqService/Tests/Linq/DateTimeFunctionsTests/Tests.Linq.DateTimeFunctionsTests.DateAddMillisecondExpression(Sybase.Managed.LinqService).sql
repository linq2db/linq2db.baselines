BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Integer -- Int32
SET     @p1 = 226

SELECT 
	DateAdd(millisecond, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

