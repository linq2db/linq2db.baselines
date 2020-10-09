BeforeExecute
-- Access AccessOleDb

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Iif([p].[Value1] = 1, 10, 20) = 20

