BeforeExecute
-- SqlCe

SELECT
	[pmp].[ParentID] as [Key_1]
FROM
	[Child] [pmp]
GROUP BY
	[pmp].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

