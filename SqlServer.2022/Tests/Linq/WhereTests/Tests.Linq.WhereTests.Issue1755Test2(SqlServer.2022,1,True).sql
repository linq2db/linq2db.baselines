-- SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] = @id AND [c_1].[Value1] IS NULL

-- SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

