BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Fact]', N'U') IS NOT NULL)
	DROP TABLE [Fact]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Fact]', N'U') IS NULL)
	CREATE TABLE [Fact]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 4

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 5

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]     Int            NOT NULL,
		[FactId] Int            NOT NULL,
		[Name]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FactId Int -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tag3'

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FactId Int -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tag3'

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FactId Int -- Int32
SET     @FactId = 4
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tag4'

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- SqlServer.2005

SELECT
	[fact_1].[Id],
	[leftTag].[Id],
	[leftTag].[FactId],
	[leftTag].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [leftTag] ON [leftTag].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3
ORDER BY
	[fact_1].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Fact]', N'U') IS NOT NULL)
	DROP TABLE [Fact]

