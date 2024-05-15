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
	Replace([p].[FirstName], 'hn', 'lie') = 'Jolie' AND
	[p].[PersonID] = 1

