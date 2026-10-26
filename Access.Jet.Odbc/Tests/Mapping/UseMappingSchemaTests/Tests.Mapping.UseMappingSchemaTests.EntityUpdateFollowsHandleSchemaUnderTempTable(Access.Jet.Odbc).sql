-- Access.Jet.Odbc AccessODBC
CREATE TABLE [SourceSchemaRowTemp]
(
	[Id]    Int           NOT NULL,
	[Value] Int           NOT NULL,
	[Name]  NVarChar(255)     NULL,

	CONSTRAINT [PK_SourceSchemaRowTemp] PRIMARY KEY CLUSTERED ([Id], [Value])
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow] [t]
SET
	[t].[Value] = ?,
	[t].[Name] = ?
WHERE
	[t].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DROP TABLE [SourceSchemaRowTemp]

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

