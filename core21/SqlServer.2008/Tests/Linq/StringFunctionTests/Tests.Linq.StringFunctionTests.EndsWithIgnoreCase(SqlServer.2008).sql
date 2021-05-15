BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'%john' ESCAPE N'~' AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE N'%john' ESCAPE N'~' AND
	[p].[PersonID] = 1

