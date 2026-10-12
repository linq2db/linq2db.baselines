-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = ?
	) [p]

-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p OR PersonID = ?
	) [p]
ORDER BY
	[p].[PersonID]

