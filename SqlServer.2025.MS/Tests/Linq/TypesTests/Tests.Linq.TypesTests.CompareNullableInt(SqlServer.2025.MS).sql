-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @param Int -- Int32
SET     @param = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = @param

