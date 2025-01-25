BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP 10
					[p].[ParentID]
				FROM
					[Parent] [p]
			) [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([d].[ParentID] = [m_1].[ParentID])
ORDER BY
	[d].[ChildID]

BeforeExecute
-- Access AccessOleDb

SELECT TOP 10
	[p].[ParentID]
FROM
	[Parent] [p]

