BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p NVarChar(4000) -- String
SET     @p = N'John'

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
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p NVarChar(4000) -- String
SET     @p = N'Tester'

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

