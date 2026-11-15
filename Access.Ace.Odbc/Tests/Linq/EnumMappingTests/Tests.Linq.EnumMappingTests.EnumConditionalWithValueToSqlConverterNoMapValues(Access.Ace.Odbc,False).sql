-- Access.Ace.Odbc AccessODBC
DECLARE @level Int -- Int32
SET     @level = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, 2, 1) = ?
ORDER BY
	[p].[PersonID]

