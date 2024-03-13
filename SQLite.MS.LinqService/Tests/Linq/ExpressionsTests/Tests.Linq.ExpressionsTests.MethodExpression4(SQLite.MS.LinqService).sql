BeforeExecute
-- SQLite.MS SQLite
DECLARE @n  -- Int32
SET     @n = 3

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > @n
	) + 4
FROM
	[Parent] [p]

