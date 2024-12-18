BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1] as [Value_1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 1 AND [p].[Value1] IS NOT NULL

