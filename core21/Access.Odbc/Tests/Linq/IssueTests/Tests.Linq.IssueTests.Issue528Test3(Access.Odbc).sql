BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[FirstName]
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName_1 NVarChar(4) -- String
SET     @FirstName_1 = 'Jane'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName_1 NVarChar(4) -- String
SET     @FirstName_1 = 'John'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName_1 NVarChar(6) -- String
SET     @FirstName_1 = 'Jürgen'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName_1 NVarChar(6) -- String
SET     @FirstName_1 = 'Tester'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = ?

