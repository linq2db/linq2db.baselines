BeforeExecute
-- SqlServer.Contained SqlServer.2019

WITH [CTE_1] ([ParentID], [Value1])
AS
(
	SELECT
		[t1].[ParentID],
		[t1].[Value1]
	FROM
		[Parent] [t1]
)
SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	[CTE_1] [t2]

