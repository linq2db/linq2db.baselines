-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = @p AND CURRENT_TIMESTAMP > CAST('2020-02-29T00:00:00.000' AS DATETIME)
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND CURRENT_TIMESTAMP > CAST('2020-02-29T00:00:00.000' AS DATETIME)

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = @p AND CURRENT_TIMESTAMP > CAST('2020-02-29T00:00:00.000' AS DATETIME)
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND CURRENT_TIMESTAMP > CAST('2020-02-29T00:00:00.000' AS DATETIME)

