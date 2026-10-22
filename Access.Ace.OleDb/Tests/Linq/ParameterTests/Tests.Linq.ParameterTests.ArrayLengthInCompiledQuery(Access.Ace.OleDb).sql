-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT TOP 2
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT TOP 2
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

