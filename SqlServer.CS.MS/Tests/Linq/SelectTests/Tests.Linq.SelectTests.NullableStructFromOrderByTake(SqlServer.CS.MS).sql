-- SqlServer.CS.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[m_1].[ParentID],
	[m_1].[Value1]
FROM
	[Parent] [m_1]
ORDER BY
	[m_1].[ParentID]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

