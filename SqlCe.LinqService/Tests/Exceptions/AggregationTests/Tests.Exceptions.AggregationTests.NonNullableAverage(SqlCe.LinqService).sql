BeforeExecute
-- SqlCe

SELECT
	Avg([_].[ParentID]) as [Average]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] < 0

