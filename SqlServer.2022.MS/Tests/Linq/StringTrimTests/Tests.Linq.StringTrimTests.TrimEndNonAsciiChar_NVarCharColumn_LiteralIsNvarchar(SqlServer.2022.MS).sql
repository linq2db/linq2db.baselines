-- SqlServer.2022.MS SqlServer.2022

SELECT
	RTRIM([t].[NVarCharColumn], N'ö')
FROM
	[StringTrimTable] [t]

