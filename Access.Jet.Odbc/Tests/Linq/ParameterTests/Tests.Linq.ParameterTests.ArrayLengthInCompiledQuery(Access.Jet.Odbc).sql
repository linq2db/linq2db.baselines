-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP 2
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP 2
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

