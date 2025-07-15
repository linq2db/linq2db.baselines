BeforeExecute
-- SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
LIMIT @n

