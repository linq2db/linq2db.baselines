-- Access.Ace.Odbc AccessODBC
DECLARE @name NVarChar(4) -- String
SET     @name = 'John'

SELECT
	[p].[PersonID],
	[d].[Taxonomy]
FROM
	[Person] [p]
		LEFT JOIN [Doctor] [d] ON ([d].[PersonID] = IIF([p].[FirstName] = ?, [p].[PersonID], IIF([p].[PersonID] IS NULL, [p].[PersonID], NULL)))

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

