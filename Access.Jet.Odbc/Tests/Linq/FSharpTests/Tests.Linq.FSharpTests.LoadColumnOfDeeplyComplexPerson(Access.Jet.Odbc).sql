BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT TOP 2
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

