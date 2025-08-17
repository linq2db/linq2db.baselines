BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[LastName] + ', ' + [p].[FirstName] as [c1]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + ', ' + [p].[FirstName] = 'Pupkin, John'

