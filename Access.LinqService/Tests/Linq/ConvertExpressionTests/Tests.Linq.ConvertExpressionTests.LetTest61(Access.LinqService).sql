BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [m_1]
		INNER JOIN [Child] [d] ON ([d].[ParentID] = [m_1].[ParentID])
WHERE
	[d].[ChildID] > -100 AND [d].[ParentID] > 0
ORDER BY
	[d].[ChildID]

BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [m_1]
		INNER JOIN [Child] [d] ON ([d].[ParentID] = [m_1].[ParentID])
WHERE
	[d].[ChildID] > -100
ORDER BY
	[d].[ChildID]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100
	), True, False),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100
	)
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] > 0

