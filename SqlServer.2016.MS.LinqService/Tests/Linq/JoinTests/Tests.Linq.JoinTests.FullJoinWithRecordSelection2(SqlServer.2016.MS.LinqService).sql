BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Fact]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Fact]', N'U') IS NULL)
	CREATE TABLE [Fact]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]     Int            NOT NULL,
		[FactId] Int            NOT NULL,
		[Name]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FactId Int -- Int32
SET     @FactId = 6
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tag6'

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
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[fact_1].[Id],
	[t1].[Id],
	[t1].[FactId],
	[t1].[Name]
FROM
	[Tag] [t1]
		FULL JOIN [Fact] [fact_1] ON [t1].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3 AND [fact_1].[Id] IS NOT NULL OR
	[t1].[FactId] > 3 AND [t1].[FactId] IS NOT NULL

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Fact]

