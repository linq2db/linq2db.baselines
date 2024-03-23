BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[ParentID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		WHERE
			[t1].[ParentID] = 1
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1

