-- SqlCe
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT TOP (2)
	[t].[PersonID] as [ID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

-- SqlCe
DECLARE @p NVarChar(6) -- String
SET     @p = 'Tester'

SELECT TOP (2)
	[t].[PersonID] as [ID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

