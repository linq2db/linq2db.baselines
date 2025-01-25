BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb

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
					[p1].[ParentID],
					[p1].[ParentID] as [ParentID_1],
					[p1].[Value1],
					IIF(False, 0, NULL) as [c1]
				FROM
					[Parent] [p1]
				UNION
				SELECT
					IIF([p2].[Value1] IS NULL, 0, [p2].[Value1]) as [ParentID],
					IIF(False, 0, NULL) as [ParentID_1],
					IIF(False, 0, NULL) as [Value1],
					[p2].[ParentID] as [c1]
				FROM
					[Parent] [p2]
			) [t1]
		WHERE
			[t1].[ParentID_1] IS NULL
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[c1] = [d].[ParentID])
ORDER BY
	[d].[ChildID] DESC

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	[p1].[ParentID],
	[p1].[ParentID],
	[p1].[Value1],
	IIF(False, 0, NULL)
FROM
	[Parent] [p1]
UNION
SELECT
	IIF([p2].[Value1] IS NULL, 0, [p2].[Value1]),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	[p2].[ParentID]
FROM
	[Parent] [p2]

