-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 5
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'a'

INSERT INTO [SourceSchemaRow]
(
	[Id],
	[Value],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

