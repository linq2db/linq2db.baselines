-- SqlServer.2014.MS SqlServer.2014

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
		[GrandChild] [gc]
			INNER JOIN [Parent] [p] ON [p].[ParentID] = [gc].[ParentID]
			INNER JOIN [cte] [ct] ON [ct].[ChildID] = [gc].[ChildID]
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
			Coalesce([t1].[ParentID], -1) as [Key_1]
		FROM
			[cte] [t1]
	) [m_1]
		INNER JOIN [cte] [d] ON [m_1].[Key_1] = Coalesce([d].[ParentID], -1)

-- SqlServer.2014.MS SqlServer.2014

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
		[GrandChild] [gc]
			INNER JOIN [Parent] [p] ON [p].[ParentID] = [gc].[ParentID]
			INNER JOIN [cte] [ct] ON [ct].[ChildID] = [gc].[ChildID]
	WHERE
		[ct].[GrandChildID] <= 10
)
SELECT DISTINCT
	Coalesce([t1].[ParentID], -1)
FROM
	[cte] [t1]

