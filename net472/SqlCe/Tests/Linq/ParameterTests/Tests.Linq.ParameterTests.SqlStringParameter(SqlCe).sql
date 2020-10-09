BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT TOP (@take) 
	[t].[PersonID], 
	[t].[FirstName], 
	[t].[LastName], 
	[t].[MiddleName], 
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p NVarChar(6) -- String
SET     @p = 'Tester'

SELECT TOP (@take) 
	[t].[PersonID], 
	[t].[FirstName], 
	[t].[LastName], 
	[t].[MiddleName], 
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

