-- SqlCe

SELECT TOP (1)
	[p].[FirstName] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

-- SqlCe
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT TOP (1)
	[p].[FirstName] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p

