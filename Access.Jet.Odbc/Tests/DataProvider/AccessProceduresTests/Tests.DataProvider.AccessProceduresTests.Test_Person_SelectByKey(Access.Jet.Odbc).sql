-- Access.Jet.Odbc AccessODBC

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 4

{ CALL Person_SelectByKey(?) }

-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 4

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

