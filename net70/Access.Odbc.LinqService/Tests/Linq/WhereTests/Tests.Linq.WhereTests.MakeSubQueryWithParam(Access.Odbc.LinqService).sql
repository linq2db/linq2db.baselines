BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1
DECLARE @n_1 Int -- Int32
SET     @n_1 = 1

SELECT
	[p].[PersonID] + ?,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

