BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[ParentID], 
	True
FROM
	[Parent] [p]
UNION
SELECT 
	[ch].[ParentID], 
	False
FROM
	[Child] [ch]

