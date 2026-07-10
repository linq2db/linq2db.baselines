-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (NULL, NULL)

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, NULL)

