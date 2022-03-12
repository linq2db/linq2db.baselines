﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Parent_1].[ParentID_1],
	[lw_Parent_1].[ParentID_2],
	[lw_Parent_1].[ChildID],
	[detail_1].[ParentID],
	[detail_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID],
			[lw_Parent].[ParentID] as [ParentID_1],
			[detail].[ParentID] as [ParentID_2],
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
							[p].[ParentID] = @id
						LIMIT @take
					) [t1]
			) [lw_Parent]
				INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]
	) [lw_Parent_1]
		INNER JOIN [Child] [detail_1] ON [lw_Parent_1].[ParentID] = [detail_1].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2
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
					[p].[ParentID] = @id
				LIMIT @take
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2
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

BeforeExecute
RollbackTransaction
