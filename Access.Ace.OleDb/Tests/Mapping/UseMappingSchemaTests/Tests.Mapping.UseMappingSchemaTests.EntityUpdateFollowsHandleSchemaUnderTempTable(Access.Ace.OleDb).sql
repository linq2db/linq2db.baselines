-- Access.Ace.OleDb AccessOleDb
CREATE TABLE [SourceSchemaRowTemp]
(
	[Id]    Int           NOT NULL,
	[Value] Int           NOT NULL,
	[Name]  NVarChar(255)     NULL,

	CONSTRAINT [PK_SourceSchemaRowTemp] PRIMARY KEY CLUSTERED ([Id], [Value])
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 6
DECLARE @Name VarWChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow] [t]
SET
	[t].[Value] = @Value,
	[t].[Name] = @Name
WHERE
	[t].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb
DROP TABLE [SourceSchemaRowTemp]

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

