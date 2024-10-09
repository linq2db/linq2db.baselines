BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
			(
				SELECT TOP (100)
					[param].[ParentID],
					[param].[Value1]
				FROM
					[Parent] [param]
			) [param_1]
		WHERE
			[param_1].[ParentID] = [c_1].[ParentID] AND [param_1].[Value1] = [c_1].[ParentID]
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

