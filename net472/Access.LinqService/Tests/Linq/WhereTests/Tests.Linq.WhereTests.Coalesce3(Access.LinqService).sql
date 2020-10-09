BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Iif([p].[ParentID] <> 1, False, True) = True

