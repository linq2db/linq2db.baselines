-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2016.MS SqlServer.2016
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	1001,
	@Value1
)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id AND [t1].[Value1] = @Value1

-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

