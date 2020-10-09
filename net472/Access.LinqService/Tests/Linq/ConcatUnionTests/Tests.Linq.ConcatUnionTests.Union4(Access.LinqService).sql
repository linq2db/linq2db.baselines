BeforeExecute
-- Access AccessOleDb

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

