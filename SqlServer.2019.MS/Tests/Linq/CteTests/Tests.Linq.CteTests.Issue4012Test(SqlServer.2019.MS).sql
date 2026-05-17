-- SqlServer.2019.MS SqlServer.2019

WITH [cte] ([ParentID], [ChildID])
AS
(
	SELECT
		[t1].[ParentID],
		[t1].[ChildID]
	FROM
		[Child] [t1]
	UNION ALL
	SELECT
		[t2].[ParentID],
		[t2].[ChildID]
	FROM
		[Child] [t2]
			INNER JOIN [cte] [c2] ON [t2].[ChildID] = [c2].[ParentID]
),
[cte0] ([ParentID], [ChildID])
AS
(
	SELECT
		[t3].[ParentID],
		[t3].[ChildID]
	FROM
		[Child] [t3]
	UNION ALL
	SELECT
		[t4].[ParentID],
		[t4].[ChildID]
	FROM
		[Child] [t4]
			INNER JOIN [cte0] [c2_1] ON [t4].[ParentID] = [c2_1].[ChildID]
)
SELECT
	[t5].[ParentID],
	[t5].[ChildID]
FROM
	[cte] [t5]
UNION
SELECT
	[t6].[ParentID],
	[t6].[ChildID]
FROM
	[cte0] [t6]

