-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (NULL, NULL)

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, NULL)

