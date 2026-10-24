-- SqlServer.Contained SqlServer.2019
SELECT
	[m_1].[ParentID],
	[m_1].[Value1]
FROM
	[Parent] [m_1]
WHERE
	[m_1].[ParentID] < 4
UNION ALL
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] >= 4

-- SqlServer.Contained SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

