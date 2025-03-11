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
	'123' + CASE
		WHEN LEN([p].[FirstName]) < 6 THEN REPLICATE(' ', 6 - LEN([p].[FirstName])) + [p].[FirstName]
		ELSE [p].[FirstName]
	END = '123  John' AND
	[p].[PersonID] = 1

