BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	DECODE([r].[One], [r].[One], 0, 1) = 0

