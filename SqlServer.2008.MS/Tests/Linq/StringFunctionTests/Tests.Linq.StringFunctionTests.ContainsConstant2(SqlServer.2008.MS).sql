BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%o~%h%' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

