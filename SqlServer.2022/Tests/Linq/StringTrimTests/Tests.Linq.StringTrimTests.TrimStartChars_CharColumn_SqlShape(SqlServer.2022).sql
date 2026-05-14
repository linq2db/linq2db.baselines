-- SqlServer.2022

SELECT
	LTRIM([t].[CharColumn], '.+')
FROM
	[StringTrimTable] [t]

