BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
INSERT BULK [Parent](ParentID, Value1)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1000 AND [p].[Value1] IS NULL OR [p].[ParentID] = 1001 AND [p].[Value1] IS NULL

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

