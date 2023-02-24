BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @id_1 Int -- Int32
SET     @id_1 = 1
DECLARE @id_2 Int -- Int32
SET     @id_2 = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	(([_].[PersonID] = ? OR [_].[PersonID] <= ?) OR [_].[PersonID] = ?)

