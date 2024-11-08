BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(1) -- String
SET     @FirstName = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName

BeforeExecute
-- SqlCe

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	1 = 0

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(1) -- String
SET     @FirstName = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName

