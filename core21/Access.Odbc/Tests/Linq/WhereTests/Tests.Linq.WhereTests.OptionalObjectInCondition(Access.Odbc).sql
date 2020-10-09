BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName_1 NVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	[r].[FirstName], 
	[r].[PersonID], 
	[r].[LastName], 
	[r].[MiddleName], 
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[r].[FirstName], 
	[r].[PersonID], 
	[r].[LastName], 
	[r].[MiddleName], 
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] IS NULL

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName_1 NVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	[r].[FirstName], 
	[r].[PersonID], 
	[r].[LastName], 
	[r].[MiddleName], 
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = ?

