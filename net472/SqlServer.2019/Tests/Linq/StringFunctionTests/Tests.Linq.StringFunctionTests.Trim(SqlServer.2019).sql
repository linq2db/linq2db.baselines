BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[p].[PersonID], 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	LTrim(RTrim(N'  ' + [p].[FirstName] + N' ')) = N'John' AND
	[p].[PersonID] = 1

