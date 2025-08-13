BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

