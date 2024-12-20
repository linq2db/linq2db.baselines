BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2816Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue2816Table]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2816Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Text NVarChar -- String
SET     @Text = ''

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(1) -- String
SET     @Text = 'a'

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Text NVarChar(3) -- String
SET     @Text = ' m '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Text NVarChar(1) -- String
SET     @Text = ' '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Text NVarChar(2) -- String
SET     @Text = '  '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Text NVarChar -- String
SET     @Text = NULL

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR LTRIM([p].[Text]) = ''

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue2816Table]

