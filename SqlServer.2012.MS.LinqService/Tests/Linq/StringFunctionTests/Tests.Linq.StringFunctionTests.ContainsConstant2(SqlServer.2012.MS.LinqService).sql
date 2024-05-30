BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%o~%h%' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

