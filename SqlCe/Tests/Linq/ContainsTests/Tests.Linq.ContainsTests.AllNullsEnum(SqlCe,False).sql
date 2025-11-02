-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (NULL, NULL)

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, NULL)

