BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @take_1  -- Int32
SET     @take_1 = 1
DECLARE @take_2  -- Int32
SET     @take_2 = 1

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
WHERE
	(
		SELECT
			*
		FROM
			[GrandChild] [t1]
		WHERE
			[x].[ParentID] = [t1].[ParentID] AND [x].[ChildID] = [t1].[ChildID]
		LIMIT @take
	) <> (
		SELECT
			*
		FROM
			[GrandChild] [t2]
		WHERE
			[x].[ParentID] = [t2].[ParentID] AND [x].[ChildID] = [t2].[ChildID]
		LIMIT @take_1
	) AND
	[x].[ParentID] <> (
		SELECT
			[p].[ChildID]
		FROM
			[Child] [p]
		WHERE
			[a_Parent].[ParentID] = [p].[ParentID]
		LIMIT @take_2
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @take_1  -- Int32
SET     @take_1 = 1
DECLARE @take_2  -- Int32
SET     @take_2 = 1

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[ParentID]
WHERE
	(
		SELECT
			*
		FROM
			[GrandChild] [t1]
		WHERE
			[x].[ParentID] = [t1].[ParentID] AND [x].[ChildID] = [t1].[ChildID]
		LIMIT @take
	) <> (
		SELECT
			*
		FROM
			[GrandChild] [t2]
		WHERE
			[x].[ParentID] = [t2].[ParentID] AND [x].[ChildID] = [t2].[ChildID]
		LIMIT @take_1
	) AND
	[x].[ParentID] <> (
		SELECT
			[p].[ChildID]
		FROM
			[Child] [p]
		WHERE
			[a_Parent].[ParentID] = [p].[ParentID]
		LIMIT @take_2
	)

