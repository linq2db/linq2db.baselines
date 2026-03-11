SELECT
	[p].[FIRST_NAME] as [Name],
	5 as [AGE],
	5000 + Length([p].[FIRST_NAME]) * 10 as [MONEY]
FROM
	[PERSON] [p]
WHERE
	[p].[FIRST_NAME] <> '' OR [p].[FIRST_NAME] IS NULL

SELECT
	[q].[FIRST_NAME] as [Name],
	5000 + Length([q].[FIRST_NAME]) * 10 as [MONEY]
FROM
	[PERSON] [q]
WHERE
	[q].[FIRST_NAME] <> '' OR [q].[FIRST_NAME] IS NULL

