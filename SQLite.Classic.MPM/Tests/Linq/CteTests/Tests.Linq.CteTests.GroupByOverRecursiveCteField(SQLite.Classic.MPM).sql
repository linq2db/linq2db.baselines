-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [cte] ([ChildID], [ParentID], [GrandChildID])
AS
(
	SELECT
		[gc1].[ChildID],
		[gc1].[GrandChildID],
		[gc1].[GrandChildID]
	FROM
		[GrandChild] [gc1]
	UNION ALL
	SELECT
		[ct].[ChildID],
		[ct].[ParentID],
		[ct].[ChildID] + 1
	FROM
		[GrandChild] [t1]
			INNER JOIN [Parent] [p] ON [p].[ParentID] = [t1].[ParentID]
			INNER JOIN [cte] [ct] ON [ct].[ChildID] = [t1].[ChildID]
	WHERE
		[ct].[GrandChildID] <= 10
)
SELECT
	[m_1].[Key_1],
	[d].[ChildID],
	[d].[ParentID],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			Coalesce([t2].[ParentID], -1) as [Key_1]
		FROM
			[cte] [t2]
	) [m_1]
		INNER JOIN [cte] [d] ON [m_1].[Key_1] = Coalesce([d].[ParentID], -1)

-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [cte] ([ChildID], [ParentID], [GrandChildID])
AS
(
	SELECT
		[gc1].[ChildID],
		[gc1].[GrandChildID],
		[gc1].[GrandChildID]
	FROM
		[GrandChild] [gc1]
	UNION ALL
	SELECT
		[ct].[ChildID],
		[ct].[ParentID],
		[ct].[ChildID] + 1
	FROM
		[GrandChild] [t1]
			INNER JOIN [Parent] [p] ON [p].[ParentID] = [t1].[ParentID]
			INNER JOIN [cte] [ct] ON [ct].[ChildID] = [t1].[ChildID]
	WHERE
		[ct].[GrandChildID] <= 10
)
SELECT DISTINCT
	Coalesce([t2].[ParentID], -1)
FROM
	[cte] [t2]

