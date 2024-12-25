BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	COUNT(*) > 0
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

