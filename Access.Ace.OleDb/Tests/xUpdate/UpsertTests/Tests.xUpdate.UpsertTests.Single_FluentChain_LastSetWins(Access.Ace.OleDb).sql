-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Date -- DateTime
SET     @CreatedAt = NULL
DECLARE @UpdatedAt Date -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarWChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[CreatedBy] = 'second-root',
	[t1].[UpdatedAt] = @UpdatedAt,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Date -- DateTime
SET     @CreatedAt = NULL
DECLARE @UpdatedAt Date -- DateTime
SET     @UpdatedAt = NULL

INSERT INTO [UpsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy],
	[UpdatedAt],
	[UpdatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	'second-root',
	@UpdatedAt,
	'second-branch'
)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id],
	[r].[Name],
	[r].[Version],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1

