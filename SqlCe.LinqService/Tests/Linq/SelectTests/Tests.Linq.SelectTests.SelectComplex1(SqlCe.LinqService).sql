BeforeExecute
-- SqlCe

SELECT TOP (1)
	[_].[PersonID] as [ID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1

