BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

