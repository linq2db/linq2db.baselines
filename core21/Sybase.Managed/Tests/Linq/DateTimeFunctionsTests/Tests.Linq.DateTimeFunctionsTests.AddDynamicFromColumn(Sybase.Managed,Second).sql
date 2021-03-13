BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(second, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

