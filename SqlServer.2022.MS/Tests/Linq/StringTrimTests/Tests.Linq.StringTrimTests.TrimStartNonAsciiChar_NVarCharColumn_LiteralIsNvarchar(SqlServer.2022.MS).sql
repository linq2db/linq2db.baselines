-- SqlServer.2022.MS SqlServer.2022

SELECT
	LTRIM([t].[NVarCharColumn], N'ö')
FROM
	[StringTrimTable] [t]

