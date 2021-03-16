﻿BeforeExecute
-- SQLite.MS SQLite

WITH [CTE_1]
(
	[ParentID],
	[ChildID],
	[ParentID_1],
	[Value1]
)
AS
(
	SELECT
		[child_1].[ParentID],
		[child_1].[ChildID],
		[a_Parent].[ParentID],
		[a_Parent].[Value1]
	FROM
		[Child] [child_1]
			LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
)
SELECT
	[t2].[Parent_ParentID],
	[t2].[Value1],
	[t2].[Child_ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[child_2].[ParentID] as [Child_ParentID],
			[child_2].[ChildID],
			[a_Parent_1].[ParentID] as [Parent_ParentID],
			[a_Parent_1].[Value1]
		FROM
			[Child] [child_2]
				LEFT JOIN [Parent] [a_Parent_1] ON [child_2].[ParentID] = [a_Parent_1].[ParentID]
		UNION
		SELECT
			[t1].[ParentID] as [Child_ParentID],
			[t1].[ChildID],
			[t1].[ParentID_1] as [Parent_ParentID],
			[t1].[Value1]
		FROM
			[CTE_1] [t1]
	) [t2]

BeforeExecute
-- SQLite.MS SQLite

WITH [CTE_1]
(
	[ParentID],
	[ChildID],
	[ParentID_1],
	[Value1]
)
AS
(
	SELECT
		[child_1].[ParentID],
		[child_1].[ChildID],
		[a_Parent].[ParentID],
		[a_Parent].[Value1]
	FROM
		[Child] [child_1]
			LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
)
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID_1],
	[t1].[Value1]
FROM
	[CTE_1] [t1]
UNION
SELECT
	[child_2].[ParentID],
	[child_2].[ChildID],
	[a_Parent_1].[ParentID],
	[a_Parent_1].[Value1]
FROM
	[Child] [child_2]
		LEFT JOIN [Parent] [a_Parent_1] ON [child_2].[ParentID] = [a_Parent_1].[ParentID]

