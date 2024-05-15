BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] = [m_1].[ParentID]
WHERE
	[d].[ChildID] > -100 AND [d].[ParentID] > 0
ORDER BY
	[d].[ChildID]

BeforeExecute
-- Sybase.Managed Sybase

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
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] = [m_1].[ParentID]
WHERE
	[d].[ChildID] > -100
ORDER BY
	[d].[ChildID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100
	),
	[p].[ParentID]
FROM
	[Parent] [p]

