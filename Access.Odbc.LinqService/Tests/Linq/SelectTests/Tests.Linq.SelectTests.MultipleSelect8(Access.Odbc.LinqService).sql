BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * 2) / CVar(?),
	[p2].[FirstName]
FROM
	[Person] [p2]

