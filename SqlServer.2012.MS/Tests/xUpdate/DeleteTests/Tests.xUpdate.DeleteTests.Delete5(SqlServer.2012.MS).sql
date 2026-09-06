-- SqlServer.2012.MS SqlServer.2012
DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2012.MS SqlServer.2012
DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2012.MS SqlServer.2012
DECLARE @values_0 Int -- Int32
SET     @values_0 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values_0,
	1
)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @values_0 Int -- Int32
SET     @values_0 = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values_0,
	1
)

-- SqlServer.2012.MS SqlServer.2012
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2012.MS SqlServer.2012
DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] IN (1001, 1002)

-- SqlServer.2012.MS SqlServer.2012
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

