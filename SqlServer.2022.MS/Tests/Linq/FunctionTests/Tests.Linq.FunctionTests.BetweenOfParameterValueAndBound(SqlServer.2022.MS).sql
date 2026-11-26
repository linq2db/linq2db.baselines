-- SqlServer.2022.MS SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 3
DECLARE @low Int -- Int32
SET     @low = 0

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	@value BETWEEN @low AND [p].[ParentID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2022.MS SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 3
DECLARE @low Int -- Int32
SET     @low = 0

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	@value NOT BETWEEN @low AND [p].[ParentID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

