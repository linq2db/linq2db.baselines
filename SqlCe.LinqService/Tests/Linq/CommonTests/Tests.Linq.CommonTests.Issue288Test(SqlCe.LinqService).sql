BeforeExecute
-- SqlCe

SELECT TOP (1)
	[p].[FirstName] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- SqlCe
DECLARE @ID NVarChar(4) -- String
SET     @ID = 'John'

SELECT TOP (1)
	[p].[FirstName] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ID

