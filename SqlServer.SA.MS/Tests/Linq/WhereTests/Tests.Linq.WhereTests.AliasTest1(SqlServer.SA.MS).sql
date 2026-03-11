-- SqlServer.SA.MS SqlServer.2019
DECLARE @user Int -- Int32
SET     @user = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @user

