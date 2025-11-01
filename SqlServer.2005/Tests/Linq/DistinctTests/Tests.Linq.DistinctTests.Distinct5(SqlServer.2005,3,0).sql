-- SqlServer.2005
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	@Value1
FROM
	[Parent] [p]

-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2005
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	@Value1
FROM
	[Parent] [p]

-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

