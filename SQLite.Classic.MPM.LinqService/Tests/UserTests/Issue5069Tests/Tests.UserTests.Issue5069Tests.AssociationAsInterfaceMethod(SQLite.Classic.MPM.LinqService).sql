BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @UserId  -- Int32
SET     @UserId = 123
DECLARE @take  -- Int32
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
					[Account] [x]
				WHERE
					EXISTS(
						SELECT
							*
						FROM
							[User] [y]
						WHERE
							[x].[UserId] = [y].[Id] AND [y].[Id] = @UserId
					)
				LIMIT @take
			) [t1]
	) [m_1]
		INNER JOIN [User] [d] ON [m_1].[UserId] = [d].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @UserId  -- Int32
SET     @UserId = 123
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[UserId]
FROM
	[Account] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[User] [y]
		WHERE
			[x].[UserId] = [y].[Id] AND [y].[Id] = @UserId
	)
LIMIT @take

