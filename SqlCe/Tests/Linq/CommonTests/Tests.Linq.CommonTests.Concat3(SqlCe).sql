BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	((([p].[FirstName] + ' ') + Convert(NVarChar(11), 1)) + Convert(NVarChar(11), 2)) = 'John 12'

