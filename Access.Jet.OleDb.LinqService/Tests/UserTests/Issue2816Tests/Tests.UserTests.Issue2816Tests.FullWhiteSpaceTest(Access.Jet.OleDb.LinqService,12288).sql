BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue2816Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue2816Table]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2816Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text VarWChar(1) -- String
SET     @Text = '　'

INSERT INTO [Issue2816Table]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Text VarWChar(3) -- String
SET     @Text = ' 　 '

INSERT INTO [Issue2816Table]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Text VarWChar(4) -- String
SET     @Text = ' 　x '

INSERT INTO [Issue2816Table]
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
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR LTRIM([p].[Text]) = '')

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue2816Table]

