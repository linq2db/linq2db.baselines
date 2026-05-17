-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

INSERT BULK [Parent](ParentID, Value1)

CommitTransaction
-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

