BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

