BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%o~%h%' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

