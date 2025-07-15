BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

