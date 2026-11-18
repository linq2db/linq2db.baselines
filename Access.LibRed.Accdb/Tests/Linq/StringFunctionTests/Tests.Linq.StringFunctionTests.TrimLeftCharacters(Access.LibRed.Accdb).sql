-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[pp].[PersonID],
	'  ' + [pp].[FirstName] + ' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTrim('  ' + [pp].[FirstName] + ' ', ' J') = 'ohn '

