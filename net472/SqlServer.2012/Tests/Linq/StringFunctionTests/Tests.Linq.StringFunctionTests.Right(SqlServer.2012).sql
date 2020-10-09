BeforeExecute
-- SqlServer.2012

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Right([p].[FirstName], 3) = N'ohn' AND [p].[PersonID] = 1

