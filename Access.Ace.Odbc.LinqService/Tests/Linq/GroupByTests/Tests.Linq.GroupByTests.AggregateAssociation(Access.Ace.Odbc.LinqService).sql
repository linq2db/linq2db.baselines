BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	SUM(IIF([a_Parent].[Value1] IS NULL, 0, [a_Parent].[Value1]))
FROM
	[Child] [grp]
		LEFT JOIN [Parent] [a_Parent] ON ([grp].[ParentID] = [a_Parent].[ParentID])
GROUP BY
	[grp].[ParentID]

