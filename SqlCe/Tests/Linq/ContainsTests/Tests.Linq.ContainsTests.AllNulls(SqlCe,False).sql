-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (NULL, NULL)

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, NULL)

