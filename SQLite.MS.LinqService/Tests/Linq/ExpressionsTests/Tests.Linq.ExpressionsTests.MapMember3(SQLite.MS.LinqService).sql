BeforeExecute
-- SQLite.MS SQLite
DECLARE @n  -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] > @n AND [p].[ParentID] = [c_1].[ParentID]
	) + 2
FROM
	[Parent] [p]

