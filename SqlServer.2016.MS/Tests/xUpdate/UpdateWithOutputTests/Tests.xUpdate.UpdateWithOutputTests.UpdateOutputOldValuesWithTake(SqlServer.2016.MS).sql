-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 4

UPDATE
	[u]
SET
	[u].[NeedsUpdate] = [t1].[c1]
OUTPUT
	DELETED.[Id],
	DELETED.[Name],
	DELETED.[NeedsUpdate]
FROM
	[UpdateOutputFlaggedRow] [u],
	(
		SELECT TOP (@take)
			0 as [c1],
			[e].[Id]
		FROM
			[UpdateOutputFlaggedRow] [e]
		WHERE
			[e].[NeedsUpdate] = 1
		ORDER BY
			[e].[Id]
	) [t1]
WHERE
	[u].[Id] = [t1].[Id]

