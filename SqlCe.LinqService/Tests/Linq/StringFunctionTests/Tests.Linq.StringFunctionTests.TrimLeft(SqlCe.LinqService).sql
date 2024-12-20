BeforeExecute
-- SqlCe

SELECT
	[pp].[PersonID] as [ID],
	'  ' + [pp].[FirstName] + ' ' as [Name]
FROM
	[Person] [pp]
WHERE
	LTRIM('  ' + [pp].[FirstName] + ' ') = 'John ' AND
	[pp].[PersonID] = 1

