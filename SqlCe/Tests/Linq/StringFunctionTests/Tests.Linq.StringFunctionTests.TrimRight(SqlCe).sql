BeforeExecute
-- SqlCe

SELECT
	[pp].[PersonID] as [ID],
	'  ' + [pp].[FirstName] + ' ' as [Name]
FROM
	[Person] [pp]
WHERE
	RTRIM('  ' + [pp].[FirstName] + ' ') = '  John' AND
	[pp].[PersonID] = 1

