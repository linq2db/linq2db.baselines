BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] IS NULL

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = ?

