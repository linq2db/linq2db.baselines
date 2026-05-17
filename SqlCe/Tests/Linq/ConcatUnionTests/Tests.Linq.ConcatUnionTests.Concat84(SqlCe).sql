-- SqlCe

SELECT
	[c_1].[ParentID] as [ID1],
	[c_1].[ChildID] as [ID2],
	[c_1].[ParentID] + 1 as [ID3]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID] as [ID1],
	[c_2].[ParentID] as [ID2],
	Coalesce([c_2].[Value1], 0) as [ID3]
FROM
	[Parent] [c_2]

