-- SqlServer.2016.MS SqlServer.2016

SELECT
	[m_1].[Item1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID] as [Item1]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Item1] = [d].[ParentID]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[m_1].[Item1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID] as [Item1]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Item1] = [d].[ParentID]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[m_1].[Item1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID] as [Item1]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Item1] = [d].[ParentID]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[n].[ParentID]
FROM
	[Parent] [n]

