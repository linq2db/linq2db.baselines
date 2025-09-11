BeforeExecute
-- SqlCe

SELECT
	[p1].[FirstName],
	[p1].[PersonID] as [ID],
	[p1].[LastName],
	[p1].[MiddleName],
	[p1].[Gender]
FROM
	[Person] [p1]
		CROSS JOIN [Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID] AND Replace([p1].[FirstName], 'J', '%') LIKE Replace(Replace(Replace(Replace([p2].[FirstName], 'J', '%'), '~', '~~'), '_', '~_'), '%', '~%') + '%' ESCAPE '~'

