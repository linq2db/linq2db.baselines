-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(3) -- String
SET     @Name = 'inc'
DECLARE @Version Integer -- Int32
SET     @Version = 3
DECLARE @CreatedAt Date -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarWChar -- String
SET     @CreatedBy = NULL
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
	[t1].[Version] = [t1].[Version] + @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[CreatedBy] = @CreatedBy,
	[t1].[UpdatedAt] = @UpdatedAt,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.Jet.OleDb AccessOleDb

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

