-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = ?
	) [p]

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = ? OR PersonID = ?
	) [p]
ORDER BY
	[p].[PersonID]

