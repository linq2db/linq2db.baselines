-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
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

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
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

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p

