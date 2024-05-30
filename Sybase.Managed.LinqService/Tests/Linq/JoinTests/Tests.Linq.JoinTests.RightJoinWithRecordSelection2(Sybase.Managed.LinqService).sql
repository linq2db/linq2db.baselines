BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Fact') IS NOT NULL)
	DROP TABLE [Fact]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Fact') IS NULL)
	EXECUTE('
		CREATE TABLE [Fact]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Tag') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Tag') IS NULL)
	EXECUTE('
		CREATE TABLE [Tag]
		(
			[Id]     Int           NOT NULL,
			[FactId] Int           NOT NULL,
			[Name]   NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'Tag3'

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'Tag3'

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FactId Integer -- Int32
SET     @FactId = 4
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'Tag4'

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
-- Sybase.Managed Sybase

SELECT
	[fact_1].[Id],
	[t1].[Id],
	[t1].[FactId],
	[t1].[Name]
FROM
	[Tag] [t1]
		RIGHT JOIN [Fact] [fact_1] ON [t1].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Tag') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Fact') IS NOT NULL)
	DROP TABLE [Fact]

