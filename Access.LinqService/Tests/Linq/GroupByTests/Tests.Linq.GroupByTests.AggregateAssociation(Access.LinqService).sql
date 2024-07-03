BeforeExecute
-- Access AccessOleDb

SELECT
	SUM(IIF([a_Parent].[Value1] IS NOT NULL, [a_Parent].[Value1], 0))
FROM
	[Child] [grp]
		LEFT JOIN [Parent] [a_Parent] ON ([grp].[ParentID] = [a_Parent].[ParentID])
GROUP BY
	[grp].[ParentID]

