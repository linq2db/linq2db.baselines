-- SqlCe

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1]
		CROSS JOIN (
			SELECT DISTINCT
				[g_1].[ParentID]
			FROM
				[Child] [g_1]
		) [pmp]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

