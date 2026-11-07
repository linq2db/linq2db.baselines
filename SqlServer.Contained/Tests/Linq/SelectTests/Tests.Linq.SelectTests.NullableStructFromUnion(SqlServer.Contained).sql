-- SqlServer.Contained SqlServer.2025
SELECT
	[m_1].[ParentID],
	[m_1].[ParentID],
	[m_1].[Value1]
FROM
	[Parent] [m_1]
WHERE
	[m_1].[ParentID] < 4
UNION
SELECT
	[p].[ParentID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] >= 2

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

