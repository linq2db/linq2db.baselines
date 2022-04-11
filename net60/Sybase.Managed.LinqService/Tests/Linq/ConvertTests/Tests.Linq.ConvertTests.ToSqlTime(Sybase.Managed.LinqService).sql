BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Time, Convert(VarChar(11), DatePart(hour, [t].[DateTimeValue])) + ':01:01')
FROM
	[LinqDataTypes] [t]

