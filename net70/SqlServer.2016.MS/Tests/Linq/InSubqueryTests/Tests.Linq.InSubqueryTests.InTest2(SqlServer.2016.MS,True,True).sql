BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID]
FROM
	[GrandChild] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			([p].[Value1] = [c_1].[ParentID] OR [p].[Value1] IS NULL AND [c_1].[ParentID] IS NULL)
	)

