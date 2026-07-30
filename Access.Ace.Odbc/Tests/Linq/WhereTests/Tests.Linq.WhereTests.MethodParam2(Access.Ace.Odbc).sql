-- Access.Ace.Odbc AccessODBC
DECLARE @t Int -- Int32
SET     @t = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @t Int -- Int32
SET     @t = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ?

