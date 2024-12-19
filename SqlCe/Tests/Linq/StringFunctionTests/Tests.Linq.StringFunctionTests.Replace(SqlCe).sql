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
	REPLACE([p].[FirstName], 'hn', 'lie') = 'Jolie' AND
	[p].[PersonID] = 1

