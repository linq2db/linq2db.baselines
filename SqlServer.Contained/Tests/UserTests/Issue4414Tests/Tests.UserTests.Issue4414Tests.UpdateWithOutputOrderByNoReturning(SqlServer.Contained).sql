BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MessageDto4414]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[MessageDto4414]', N'U') IS NULL)
	CREATE TABLE [MessageDto4414]
	(
		[Id]       Int            NOT NULL,
		[Key]      Int            NOT NULL,
		[Consumed] DateTime2          NULL,
		[Payload]  NVarChar(4000)     NULL,

		CONSTRAINT [PK_MessageDto4414] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MessageDto4414]

