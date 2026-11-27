-- SQLite.Classic SQLite
DECLARE @UserId Integer -- Int32
SET     @UserId = 123
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	[m_1].[UserId],
	[d].[Id]
FROM
	(
		SELECT DISTINCT
			[t1].[UserId]
		FROM
			(
				SELECT
					[x].[UserId]
				FROM
					[EntityFilterAccount] [x]
				WHERE
					EXISTS(
						SELECT
							*
						FROM
							[EntityFilterUser] [y]
						WHERE
							[x].[UserId] = [y].[Id] AND [y].[Id] = @UserId
					)
				LIMIT @take
			) [t1]
	) [m_1]
		INNER JOIN [EntityFilterUser] [d] ON [m_1].[UserId] = [d].[Id]

-- SQLite.Classic SQLite
DECLARE @UserId Integer -- Int32
SET     @UserId = 123
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	[x].[UserId]
FROM
	[EntityFilterAccount] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[EntityFilterUser] [y]
		WHERE
			[x].[UserId] = [y].[Id] AND [y].[Id] = @UserId
	)
LIMIT @take

