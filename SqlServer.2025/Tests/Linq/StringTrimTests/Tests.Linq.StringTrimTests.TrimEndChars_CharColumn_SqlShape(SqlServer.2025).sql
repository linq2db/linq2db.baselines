-- SqlServer.2025

SELECT
	RTRIM([t].[CharColumn], '.+')
FROM
	[StringTrimTable] [t]

