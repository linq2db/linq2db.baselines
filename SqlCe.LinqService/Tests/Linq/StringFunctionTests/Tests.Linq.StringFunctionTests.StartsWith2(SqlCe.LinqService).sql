BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	'John123' LIKE Replace(Replace(Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%') + '%' ESCAPE '~'

