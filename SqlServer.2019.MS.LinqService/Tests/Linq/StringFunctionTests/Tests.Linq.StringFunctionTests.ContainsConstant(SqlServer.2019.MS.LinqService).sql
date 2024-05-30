BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%jOh%' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%jOh%' ESCAPE N'~' AND [p].[PersonID] = 1

