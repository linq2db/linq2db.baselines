-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (NULL, NULL)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, NULL)

