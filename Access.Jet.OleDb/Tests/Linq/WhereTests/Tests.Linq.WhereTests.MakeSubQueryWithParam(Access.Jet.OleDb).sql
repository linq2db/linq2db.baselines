BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	([p].[PersonID] + CVar(@n)) - 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + CVar(@n) = 2

