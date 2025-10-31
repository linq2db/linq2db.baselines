-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = @param

