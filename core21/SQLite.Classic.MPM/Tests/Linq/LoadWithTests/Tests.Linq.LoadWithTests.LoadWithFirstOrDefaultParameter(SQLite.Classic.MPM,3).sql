﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 3
DECLARE @p1  -- Int32
SET     @p1 = 1

SELECT
	[lw_Parent_1].[Key_1],
	[lw_Parent_1].[ParentID_1],
	[lw_Parent_1].[ChildID],
	[detail_1].[ParentID],
	[detail_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID],
			[lw_Parent].[ParentID] as [Key_1],
			[detail].[ParentID] as [ParentID_1],
			[detail].[ChildID]
		FROM
			(
				SELECT DISTINCT
					[t1].[ParentID]
				FROM
					(
						SELECT
							[p].[ParentID]
						FROM
							[Parent] [p]
						WHERE
							[p].[ParentID] = @ParentID_1
						LIMIT @p1
					) [t1]
			) [lw_Parent]
				INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]
	) [lw_Parent_1]
		INNER JOIN [Child] [detail_1] ON [lw_Parent_1].[ParentID] = [detail_1].[ParentID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID_2  -- Int32
SET     @ParentID_2 = 3
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[p].[ParentID]
				FROM
					[Parent] [p]
				WHERE
					[p].[ParentID] = @ParentID_2
				LIMIT @take
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 3
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id
LIMIT @take

