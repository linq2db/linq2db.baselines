BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' LIKE '%n%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' NOT LIKE '%n%'

