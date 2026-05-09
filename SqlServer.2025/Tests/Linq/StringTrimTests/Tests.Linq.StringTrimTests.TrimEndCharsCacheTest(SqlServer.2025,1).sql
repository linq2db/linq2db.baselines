-- SqlServer.2025

SELECT
	RTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]

