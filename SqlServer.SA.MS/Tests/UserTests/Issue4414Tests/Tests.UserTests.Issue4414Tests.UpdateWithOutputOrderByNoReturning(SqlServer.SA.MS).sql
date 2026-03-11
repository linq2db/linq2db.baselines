-- SqlServer.SA.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

UPDATE
	[u]
SET
	[u].[Consumed] = CURRENT_TIMESTAMP
OUTPUT
	INSERTED.[Id],
	INSERTED.[Key],
	INSERTED.[Payload]
FROM
	[MessageDto4414] [u],
	(
		SELECT TOP (@take)
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

