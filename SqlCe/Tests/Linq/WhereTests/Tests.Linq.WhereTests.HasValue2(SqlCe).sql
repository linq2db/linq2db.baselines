-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1] as [cond]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NULL

