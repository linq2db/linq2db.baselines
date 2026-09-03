-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = @p
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p

-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = @p
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p

