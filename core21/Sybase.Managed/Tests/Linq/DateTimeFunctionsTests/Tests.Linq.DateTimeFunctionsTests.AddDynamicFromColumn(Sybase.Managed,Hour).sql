BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(hour, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

