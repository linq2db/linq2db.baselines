BeforeExecute
-- SqlCe

SELECT
	[_1].[ChildID] as [x],
	Avg([_1].[ParentID]) as [Average]
FROM
	(
		SELECT
			[_].[ChildID],
			[_].[ParentID]
		FROM
			[Child] [_]
	) [_1]
GROUP BY
	[_1].[ChildID]

