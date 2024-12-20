BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4135Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4135Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4135Table]', N'U') IS NULL)
	CREATE TABLE [Issue4135Table]
	(
		[Id]          Int            NOT NULL,
		[Name]        NVarChar(4000)     NULL,
		[NeedsUpdate] Bit            NOT NULL,

		CONSTRAINT [PK_Issue4135Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name1'
DECLARE @NeedsUpdate Bit -- Boolean
SET     @NeedsUpdate = 1

INSERT INTO [Issue4135Table]
(
	[Id],
	[Name],
	[NeedsUpdate]
)
VALUES
(
	@Id,
	@Name,
	@NeedsUpdate
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name2'
DECLARE @NeedsUpdate Bit -- Boolean
SET     @NeedsUpdate = 0

INSERT INTO [Issue4135Table]
(
	[Id],
	[Name],
	[NeedsUpdate]
)
VALUES
(
	@Id,
	@Name,
	@NeedsUpdate
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4135Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4135Table]

