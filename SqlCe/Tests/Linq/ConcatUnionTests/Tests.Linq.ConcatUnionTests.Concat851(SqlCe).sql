-- SqlCe

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID] as [ID1_1],
	[c_1].[ParentID] as [ID1_2]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ParentID] + 1 as [ID1_1],
	[c_2].[ChildID] as [ID1_2]
FROM
	[Child] [c_2]

