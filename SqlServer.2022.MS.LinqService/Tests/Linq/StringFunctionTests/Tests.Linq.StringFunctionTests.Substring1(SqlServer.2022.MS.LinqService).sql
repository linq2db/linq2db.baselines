BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], 2, Len([p].[FirstName]) - 1) = N'ohn' AND
	[p].[PersonID] = 1

