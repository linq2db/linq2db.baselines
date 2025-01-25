BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	[x].[position]
FROM
	[entities] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT NULL [X], NULL [Y] WHERE 1 = 0
				UNION ALL
				VALUES
					(-10,10)
				) [t]
		WHERE
			[x].[position].x > [t].[X]
	)
LIMIT @take

