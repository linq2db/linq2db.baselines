-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%o~%h%' ESCAPE N'~' AND [p].[PersonID] = 1

-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

