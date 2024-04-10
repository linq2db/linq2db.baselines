BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * CVar(?)) / 2,
	[p2].[FirstName]
FROM
	[Person] [p2]

