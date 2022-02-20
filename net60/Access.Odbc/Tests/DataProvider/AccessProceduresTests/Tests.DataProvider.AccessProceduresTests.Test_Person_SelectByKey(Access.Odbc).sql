BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Max([_].[PersonID])
FROM
	[Person] [_]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 4

{ CALL Person_SelectByKey(?) }

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 4

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = ?

