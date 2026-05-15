-- SqlServer.2025

SELECT
	LTRIM([t].[CharColumn], '.+')
FROM
	[StringTrimTable] [t]

