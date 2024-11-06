﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Names]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Names]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Addresses]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Addresses]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'name1'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'name2'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text VarWChar(7) -- String
SET     @Text = 'address'

INSERT INTO [Addresses]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name],
	[arg2].[Id],
	[arg2].[Text]
FROM
	[Names] [tupledArg]
		LEFT JOIN [Addresses] [arg2] ON ([tupledArg].[Id] = [arg2].[Id])
ORDER BY
	[tupledArg].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Addresses]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Names]

