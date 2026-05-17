-- SqlServer.2025

SELECT
	LTRIM([t].[NVarCharColumn], N'ö')
FROM
	[StringTrimTable] [t]

