BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[group_1].[Value] as [Key_1]
				FROM
					[TakeSkipClass] [group_1]
				GROUP BY
					[group_1].[Value]
				HAVING
					COUNT(*) > 1
			) [item_1]
		LIMIT @take
	)

