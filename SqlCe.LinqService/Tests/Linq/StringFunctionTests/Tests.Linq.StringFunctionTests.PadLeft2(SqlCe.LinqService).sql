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
	'123' + CASE
		WHEN Len([p].[FirstName]) > 6 THEN [p].[FirstName]
		ELSE Replicate('*', 6 - Len([p].[FirstName])) + [p].[FirstName]
	END = '123**John' AND
	[p].[PersonID] = 1

