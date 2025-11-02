-- SqlServer.Contained SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] = @id

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

