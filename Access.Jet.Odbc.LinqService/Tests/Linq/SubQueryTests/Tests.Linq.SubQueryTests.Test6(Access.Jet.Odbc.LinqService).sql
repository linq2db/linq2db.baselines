BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	(
		SELECT
			SUM([g_1].[ChildID] * [g_1].[GrandChildID])
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ChildID] = [c_1].[ChildID] AND [g_1].[GrandChildID] > 0
	),
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [g_2]
		WHERE
			[g_2].[ChildID] = [c_1].[ChildID] AND [g_2].[GrandChildID] > 0
	)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?
ORDER BY
	[c_1].[ParentID] DESC,
	[c_1].[ChildID]

