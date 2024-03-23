BeforeExecute
-- SqlCe

SELECT
	[_].[ParentID] + 1 as [c1]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]

