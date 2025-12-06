-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123*456' LIKE N'%~*%' ESCAPE N'~'

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123*456' NOT LIKE N'%~*%' ESCAPE N'~'

