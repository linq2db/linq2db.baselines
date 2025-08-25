BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
	) [t1],
	(
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	) [c_2]
WHERE
	[t1].[ParentID] = [c_2].[ParentID]

