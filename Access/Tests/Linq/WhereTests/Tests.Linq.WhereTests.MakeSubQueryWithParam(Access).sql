BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + CVar(@n) = 2

