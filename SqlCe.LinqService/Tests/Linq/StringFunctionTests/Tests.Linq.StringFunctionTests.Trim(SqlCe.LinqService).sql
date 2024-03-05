BeforeExecute
-- SqlCe

SELECT
	[pp].[PersonID] as [ID],
	'  ' + [pp].[FirstName] + ' ' as [Name]
FROM
	[Person] [pp]
WHERE
	LTrim(RTrim('  ' + [pp].[FirstName] + ' ')) = 'John' AND
	[pp].[PersonID] = 1

