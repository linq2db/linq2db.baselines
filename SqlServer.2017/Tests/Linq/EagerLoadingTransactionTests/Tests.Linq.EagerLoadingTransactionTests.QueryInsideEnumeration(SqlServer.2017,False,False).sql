-- SqlServer.2017
SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

-- SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

-- SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

-- SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

-- SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 5

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

-- SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

-- SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 7

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

