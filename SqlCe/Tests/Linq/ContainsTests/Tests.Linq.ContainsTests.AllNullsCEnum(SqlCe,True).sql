-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IS NOT NULL

