BeforeExecute
--  SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], Len([p].[FirstName]) - 2, 3) = 'ohn' AND
	[p].[PersonID] = 1

