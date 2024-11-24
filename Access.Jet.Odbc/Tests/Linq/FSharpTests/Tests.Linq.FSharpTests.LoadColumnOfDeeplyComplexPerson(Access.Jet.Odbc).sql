BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = 1

SELECT TOP 2
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

