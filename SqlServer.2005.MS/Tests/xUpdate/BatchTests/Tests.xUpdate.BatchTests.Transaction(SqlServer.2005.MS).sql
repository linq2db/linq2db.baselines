-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 1111,1111 UNION ALL
SELECT 2111,2111 UNION ALL
SELECT 3111,3111 UNION ALL
SELECT 4111,4111

CommitTransaction
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4111

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

