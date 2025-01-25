BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[c1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[c1]
		FROM
			(
				SELECT
					[p].[ParentID],
					[p].[ParentID] as [ParentID_1],
					[p].[Value1],
					NULL as [c1]
				FROM
					[Parent] [p]
				UNION
				SELECT
					Coalesce([p2].[Value1], 0) as [ParentID],
					NULL as [ParentID_1],
					NULL as [Value1],
					[p2].[ParentID] as [c1]
				FROM
					[Parent] [p2]
			) [t1]
		WHERE
			[t1].[ParentID_1] IS NULL
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[c1] = [d].[ParentID]
ORDER BY
	[d].[ChildID] DESC

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[ParentID],
	[p].[ParentID],
	[p].[Value1],
	NULL
FROM
	[Parent] [p]
UNION
SELECT
	Coalesce([p2].[Value1], 0),
	NULL,
	NULL,
	[p2].[ParentID]
FROM
	[Parent] [p2]

