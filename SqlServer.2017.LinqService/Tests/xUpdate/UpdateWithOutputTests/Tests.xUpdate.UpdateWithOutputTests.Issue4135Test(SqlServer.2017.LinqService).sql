BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 4

UPDATE
	[u]
SET
	[u].[NeedsUpdate] = 0
OUTPUT
	DELETED.[Id],
	DELETED.[Name],
	DELETED.[NeedsUpdate]
FROM
	[Issue4135Table] [u],
	(
		SELECT TOP (@take)
			[e].[Id]
		FROM
			[Issue4135Table] [e]
		WHERE
			[e].[NeedsUpdate] = 1
		ORDER BY
			[e].[Id]
	) [t1]
WHERE
	[u].[Id] = [t1].[Id]

