BeforeExecute
-- SqlCe

SELECT
	[_].[ParentID] + 1 as [c1]
FROM
	[Parent] [p],
	[Child] [_]
WHERE
	[_].[ParentID] + 1 > 1

