-- SqlCe

SELECT
	[pmp].[ParentID] as [Key_1]
FROM
	[Child] [pmp]
GROUP BY
	[pmp].[ParentID]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

