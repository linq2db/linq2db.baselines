BeforeExecute
-- SqlCe

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	LTrim(RTrim('  ' + [p].[FirstName] + ' ')) = 'John' AND
	[p].[PersonID] = 1

