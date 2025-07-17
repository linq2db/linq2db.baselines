BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	DECODE([r].[One], [r].[One], 0, 1) = 0

