SELECT
	[p].[FIRST_NAME] as [Name],
	5 as [AGE]
FROM
	[PERSON] [p]
WHERE
	[p].[FIRST_NAME] <> '' OR [p].[FIRST_NAME] IS NULL

SELECT
	[q].[FIRST_NAME] as [Name],
	5 as [AGE]
FROM
	[PERSON] [q]
WHERE
	[q].[FIRST_NAME] <> '' OR [q].[FIRST_NAME] IS NULL

