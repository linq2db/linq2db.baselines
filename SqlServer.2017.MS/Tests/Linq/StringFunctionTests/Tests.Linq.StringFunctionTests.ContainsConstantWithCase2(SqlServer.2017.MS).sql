-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%Joh%' ESCAPE N'~' AND [p].[PersonID] = 1

-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%Joh%' ESCAPE N'~' AND [p].[PersonID] = 1

