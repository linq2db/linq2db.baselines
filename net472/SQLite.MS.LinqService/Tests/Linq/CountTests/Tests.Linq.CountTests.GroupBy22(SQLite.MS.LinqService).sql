BeforeExecute
-- SQLite.MS SQLite
DECLARE @n  -- Int32
SET     @n = -1
DECLARE @n_1  -- Int32
SET     @n_1 = -1

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] < 2 AND [ch_1].[ParentID] + 1 = [ch].[ParentID] + 1 AND
			[ch].[ParentID] > @n
	)
FROM
	[Child] [ch_1]
WHERE
	[ch_1].[ParentID] > @n_1
GROUP BY
	[ch_1].[ParentID] + 1

