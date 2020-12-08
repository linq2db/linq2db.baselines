BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	20000
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 5

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [child_1]
				LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[child_1].[ChildID] = 10000 AND [Parent].[ParentID] = [a_Parent].[ParentID] AND ([Parent].[Value1] = [a_Parent].[Value1] OR [Parent].[Value1] IS NULL AND [a_Parent].[Value1] IS NULL)
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] = 10000

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = 20000

