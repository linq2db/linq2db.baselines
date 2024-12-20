--  SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	COUNT(*) OVER(),
	[id].[Id]
FROM
	(
		SELECT
			[p].[Id]
		FROM
			[Issue4629Posts] [p]
		WHERE
			(
				SELECT
					SUM([a_Tags].[Weight])
				FROM
					[Issue4629Tags] [a_Tags]
				WHERE
					[a_Tags].[Weight] > 1 AND [p].[Id] = [a_Tags].[PostId]
			) > 5
		ORDER BY
			(
				SELECT
					SUM([a_Tags_1].[Weight])
				FROM
					[Issue4629Tags] [a_Tags_1]
				WHERE
					[p].[Id] = [a_Tags_1].[PostId]
			)
		LIMIT @take
	) [id]



