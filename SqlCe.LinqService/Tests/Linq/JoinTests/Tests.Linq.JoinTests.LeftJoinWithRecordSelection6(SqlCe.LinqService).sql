BeforeExecute
-- SqlCe

DROP TABLE [Fact]

BeforeExecute
-- SqlCe

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe

DROP TABLE [Tag]

BeforeExecute
-- SqlCe

CREATE TABLE [Tag]
(
	[Id]     Int           NOT NULL,
	[FactId] Int           NOT NULL,
	[Name]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FactId Int -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4) -- String
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FactId Int -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4) -- String
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FactId Int -- Int32
SET     @FactId = 4
DECLARE @Name NVarChar(4) -- String
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
-- SqlCe

SELECT
	[ft].[Id],
	[t].[Id] as [Id_1],
	[t].[FactId],
	[t].[Name]
FROM
	[Fact] [ft]
		LEFT JOIN [Tag] [t] ON [t].[FactId] = [ft].[Id]
WHERE
	[ft].[Id] > 3
ORDER BY
	[ft].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Tag]

BeforeExecute
-- SqlCe

DROP TABLE [Fact]

