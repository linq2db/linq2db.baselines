-- SqlCe

SELECT
	[p].[PersonID] as [ID],
	'123' + [p].[FirstName] + '456' as [FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123' + [p].[FirstName] + '456' = '123John456'

