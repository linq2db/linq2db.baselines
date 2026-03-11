-- SqlCe

SELECT
	[pp].[PersonID] as [ID],
	'  ' + [pp].[FirstName] + ' ' as [Name]
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTRIM('  ' + [pp].[FirstName] + ' ') = 'John '

