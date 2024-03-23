BeforeExecute
-- SqlCe

SELECT
	[_].[ChildID] as [x],
	AVG([_].[ParentID]) as [AVG_1]
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

