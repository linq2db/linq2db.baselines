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
		WHEN LEN([p].[FirstName] + '.') > 7 THEN [p].[FirstName]
		ELSE [p].[FirstName] + Replicate(' ', 6 - (LEN([p].[FirstName] + '.') - 1))
	END + '123' = 'John  123' AND
	[p].[PersonID] = 1

