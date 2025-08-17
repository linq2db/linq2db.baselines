BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123n456' LIKE N'%n%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123n456' NOT LIKE N'%n%' ESCAPE N'~'

