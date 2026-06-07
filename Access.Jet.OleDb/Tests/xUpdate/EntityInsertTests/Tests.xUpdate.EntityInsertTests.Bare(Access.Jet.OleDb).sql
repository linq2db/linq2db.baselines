-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(2) -- String
SET     @Name = 'n1'
DECLARE @Version Integer -- Int32
SET     @Version = 7
DECLARE @CreatedAt Date -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarWChar(2) -- String
SET     @CreatedBy = 'u1'

INSERT INTO [EntityInsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@CreatedBy
)

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]

