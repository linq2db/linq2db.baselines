-- SqlServer.Contained SqlServer.2019
WITH [CTE_1] ([ParentID], [Value_1])
AS
(
	SELECT
		[p].[ParentID],
		[p].[Value1]
	FROM
		[Parent] [p]
)
SELECT
	[m_1].[ParentID],
	[m_1].[Value_1]
FROM
	[CTE_1] [m_1]

