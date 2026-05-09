-- SqlServer.2022

SELECT
	RTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]

