BeforeExecute
-- SqlCe

SELECT
	[p].[PersonID] as [ID],
	'123' + [p].[FirstName] + '456' as [FirstName]
FROM
	[Person] [p]
WHERE
	'123' + [p].[FirstName] + '456' = '123John456' AND
	[p].[PersonID] = 1

