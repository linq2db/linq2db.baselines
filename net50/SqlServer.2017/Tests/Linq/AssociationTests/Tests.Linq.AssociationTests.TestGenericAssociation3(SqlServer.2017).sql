BeforeExecute
-- SqlServer.2017

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [t1]
		WHERE
			[t].[ParentID] = [t1].[ParentID] AND [t1].[ChildID] > 22
	) > 1
ORDER BY
	[t].[ParentID]

