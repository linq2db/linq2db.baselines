BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] < 2 AND ([ch_1].[ParentID] + 1 = [ch].[ParentID] + 1 AND [ch_1].[ChildID] = [ch].[ChildID]) AND
			[ch].[ParentID] + 2 > @n
	)
FROM
	[Child] [ch_1]
WHERE
	[ch_1].[ParentID] + 2 > @n
GROUP BY
	[ch_1].[ParentID] + 1,
	[ch_1].[ChildID]

