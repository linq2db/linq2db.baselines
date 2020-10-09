BeforeExecute
-- SqlCe

SELECT 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + ' ' + Convert(NVarChar(11), 1) = 'John 1'

