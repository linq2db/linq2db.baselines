BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WhereWithString]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [WhereWithString]
(
	[Id]          Int           NOT NULL,
	[StringValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringValue VarWChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE '%Str%' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WhereWithString]

