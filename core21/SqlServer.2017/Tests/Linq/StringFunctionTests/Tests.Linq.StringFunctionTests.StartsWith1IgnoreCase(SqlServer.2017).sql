BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'joH%' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'joH%' ESCAPE N'~' AND [p].[PersonID] = 1

