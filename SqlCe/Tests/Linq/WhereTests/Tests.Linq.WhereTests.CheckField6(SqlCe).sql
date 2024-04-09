BeforeExecute
-- SqlCe

SELECT
	[p].[Value1],
	[p].[Value1] * 100 as [Value_1],
	[p].[ParentID],
	[p].[Value1] * 100 as [Value_2]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[Value1] * 100 > 0

