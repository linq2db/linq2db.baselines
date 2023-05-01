BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[obj].[FirstName],
	[obj].[LastName],
	[obj].[MiddleName],
	[obj].[Gender],
	[obj].[PersonID]
FROM
	[Person] [obj]
WHERE
	[obj].[PersonID] = ?

