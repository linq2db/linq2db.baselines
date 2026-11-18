-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

UPDATE
	[u]
SET
	[u].[Consumed] = [t1].[c1]
OUTPUT
	INSERTED.[Id],
	INSERTED.[Key],
	INSERTED.[Payload]
FROM
	[MessageDto4414] [u],
	(
		SELECT TOP (@take)
			CURRENT_TIMESTAMP as [c1],
			[x].[Id]
		FROM
			[MessageDto4414] [x]
		WHERE
			[x].[Consumed] IS NULL
		ORDER BY
			[x].[Id]
	) [t1]
WHERE
	[u].[Id] = [t1].[Id]

