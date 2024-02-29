BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
INSERT BULK [Parent](ParentID, Value1)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	([t1].[ParentID] = 1000 AND [t1].[Value1] IS NULL OR [t1].[ParentID] = 1001 AND [t1].[Value1] IS NULL)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

