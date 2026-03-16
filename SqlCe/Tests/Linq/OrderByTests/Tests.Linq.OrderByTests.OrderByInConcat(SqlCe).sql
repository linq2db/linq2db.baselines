-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
UNION ALL
SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Child] [t2]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
UNION ALL
SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Child] [t2]

-- SqlCe

SELECT
	[t3].[ParentID],
	[t3].[ChildID]
FROM
	(
		SELECT
			[t1].[ChildID],
			[t1].[ParentID]
		FROM
			[Child] [t1]
		UNION ALL
		SELECT
			[t2].[ChildID],
			[t2].[ParentID]
		FROM
			[Child] [t2]
	) [t3]
ORDER BY
	[t3].[ChildID]

