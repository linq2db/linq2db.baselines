BeforeExecute
-- SqlServer.2008

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	DECODE([r].[One], [r].[One], 0, 1) = 0

