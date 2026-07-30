-- Access.Jet.Odbc AccessODBC
DECLARE @Id NVarChar(1) -- String
SET     @Id = '1'

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

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	1 = 0

-- Access.Jet.Odbc AccessODBC
DECLARE @Id NVarChar(1) -- String
SET     @Id = '1'

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

