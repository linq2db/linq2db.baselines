-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	DECODE([r].[One], [r].[One], 0, 1) = 0

