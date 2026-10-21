-- SQLite.MS SQLite
WITH [CTE_1] ([ParentID], [Info_Value_Value])
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
	[m_1].[Info_Value_Value]
FROM
	[CTE_1] [m_1]

