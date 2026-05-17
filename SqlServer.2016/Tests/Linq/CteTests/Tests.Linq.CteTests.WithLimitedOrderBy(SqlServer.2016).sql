-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 3

WITH [CTE_1] ([ParentID], [Value1])
AS
(
	SELECT TOP (@take)
		[t1].[ParentID],
		[t1].[Value1]
	FROM
		[Parent] [t1]
	ORDER BY
		[t1].[ParentID] DESC
)
SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	[CTE_1] [t2]

