-- SqlServer.Contained SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

-- SqlServer.Contained SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP (1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

