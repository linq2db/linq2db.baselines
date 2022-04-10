BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [p],
	(
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	) [t2]
WHERE
	[p].[ParentID] = [t2].[ParentID]

