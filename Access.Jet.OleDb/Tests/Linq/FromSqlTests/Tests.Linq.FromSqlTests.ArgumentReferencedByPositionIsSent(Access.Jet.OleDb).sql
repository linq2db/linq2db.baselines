-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = ?
	) [p]

