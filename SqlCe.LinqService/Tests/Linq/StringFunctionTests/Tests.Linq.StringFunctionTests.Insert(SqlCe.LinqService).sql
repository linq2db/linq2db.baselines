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
	CASE
		WHEN Len([p].[FirstName]) = 2 THEN [p].[FirstName] + '123'
		ELSE Stuff([p].[FirstName], 3, 0, '123')
	END = 'Jo123hn' AND
	[p].[PersonID] = 1

