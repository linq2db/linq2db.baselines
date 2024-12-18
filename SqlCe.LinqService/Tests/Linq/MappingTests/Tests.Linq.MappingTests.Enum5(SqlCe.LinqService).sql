BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 3 AND [p].[Value1] IS NOT NULL

