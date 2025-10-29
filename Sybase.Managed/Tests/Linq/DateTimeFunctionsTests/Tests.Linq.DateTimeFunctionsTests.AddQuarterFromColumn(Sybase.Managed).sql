-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

