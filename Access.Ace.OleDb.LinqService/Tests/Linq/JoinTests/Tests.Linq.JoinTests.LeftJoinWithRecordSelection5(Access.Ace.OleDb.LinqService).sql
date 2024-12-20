﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Fact]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Tag]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Tag]
(
	[Id]     Int           NOT NULL,
	[FactId] Int           NOT NULL,
	[Name]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name VarWChar(4) -- String
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name VarWChar(4) -- String
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FactId Integer -- Int32
SET     @FactId = 4
DECLARE @Name VarWChar(4) -- String
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
-- Access.Ace.OleDb AccessOleDb

SELECT
	[ft].[Id],
	[t].[Id],
	[t].[FactId],
	[t].[Name]
FROM
	[Fact] [ft]
		LEFT JOIN [Tag] [t] ON ([t].[FactId] = [ft].[Id])
WHERE
	[ft].[Id] > 3
ORDER BY
	[ft].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Tag]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Fact]

