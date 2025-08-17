BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [a_GrandChildrenX]
		WHERE
			[t].[ParentID] = [a_GrandChildrenX].[ParentID] AND
			[a_GrandChildrenX].[ChildID] > 22
	) > 1
ORDER BY
	[t].[ParentID]

