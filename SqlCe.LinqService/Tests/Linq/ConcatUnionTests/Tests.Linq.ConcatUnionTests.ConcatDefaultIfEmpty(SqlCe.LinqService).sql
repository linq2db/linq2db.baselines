BeforeExecute
-- SqlCe

SELECT
	CAST(0 AS Int) as [projection__set_id__],
	[t1].[cond],
	[t1].[cond] as [ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID] as [cond],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
WHERE
	[p].[ParentID] = 1
UNION ALL
SELECT
	CAST(1 AS Int) as [projection__set_id__],
	NULL as [cond],
	NULL as [ParentID],
	NULL as [ChildID]
FROM
	[Parent] [p_1]
WHERE
	[p_1].[ParentID] <> 1

BeforeExecute
-- SqlCe

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

