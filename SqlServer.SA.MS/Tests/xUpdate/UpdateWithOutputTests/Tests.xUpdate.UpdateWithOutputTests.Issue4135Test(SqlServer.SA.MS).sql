BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4135Table]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue4135Table]', N'U') IS NULL)
	CREATE TABLE [Issue4135Table]
	(
		[Id]          Int            NOT NULL,
		[Name]        NVarChar(4000)     NULL,
		[NeedsUpdate] Bit            NOT NULL,

		CONSTRAINT [PK_Issue4135Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Issue4135Table]
(
	[Id],
	[Name],
	[NeedsUpdate]
)
VALUES
(1,N'name1',1),
(2,N'name2',0)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4135Table]

