-- SqlServer.2022.MS SqlServer.2022

SELECT
	RTRIM([t].[CharColumn], '.+')
FROM
	[StringTrimTable] [t]

