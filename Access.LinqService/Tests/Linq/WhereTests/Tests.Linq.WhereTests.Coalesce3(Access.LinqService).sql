BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	NOT ([p].[ParentID] <> 1)

