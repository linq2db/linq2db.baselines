BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1622Table]
(
	[Id]       Int           NOT NULL,
	[SomeText] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue1622Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeText VarWChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO [Issue1622Table]
(
	[Id],
	[SomeText]
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2 
	[e].[Id], 
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2 
	[e].[Id], 
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1622Table]

