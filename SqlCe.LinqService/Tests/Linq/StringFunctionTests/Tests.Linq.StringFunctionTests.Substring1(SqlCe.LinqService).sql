BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], 2, LEN([p].[FirstName] + '.') - 2) = 'ohn' AND
	[p].[PersonID] = 1

