-- SqlServer.Contained SqlServer.2019
WITH [CTE_1] ([Info_Id], [Value_1])
AS
(
	SELECT
		[p].[ParentID],
		[p].[Value1]
	FROM
		[Parent] [p]
)
SELECT
	[m_1].[Info_Id],
	[m_1].[Value_1]
FROM
	[CTE_1] [m_1]
WHERE
	[m_1].[Info_Id] > 2

