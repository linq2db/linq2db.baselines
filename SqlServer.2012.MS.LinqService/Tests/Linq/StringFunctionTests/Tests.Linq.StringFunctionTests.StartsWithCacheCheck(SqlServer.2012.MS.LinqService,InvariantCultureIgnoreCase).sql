BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT TOP (2)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

