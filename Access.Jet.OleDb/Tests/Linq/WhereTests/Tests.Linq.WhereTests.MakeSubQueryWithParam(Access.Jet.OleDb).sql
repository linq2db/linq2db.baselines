-- Access.Jet.OleDb AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1
DECLARE @n_1 Integer -- Int32
SET     @n_1 = 1

SELECT
	([p].[PersonID] + @n) - 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + @n_1 = 2

