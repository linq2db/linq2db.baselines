BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(minute, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

