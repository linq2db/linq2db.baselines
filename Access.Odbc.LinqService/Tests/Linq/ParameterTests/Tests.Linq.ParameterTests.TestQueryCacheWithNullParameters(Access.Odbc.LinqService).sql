BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

