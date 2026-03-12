-- SqlCe

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2) as [Value_1],
	[p].[Value1]
FROM
	[Parent] [p]

