-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'new1'
DECLARE @Version Integer -- Int32
SET     @Version = 5
DECLARE @UpdatedAt Date -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarWChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = @Name,
	[t].[Version] = [t].[Version] + @Version,
	[t].[UpdatedAt] = @UpdatedAt,
	[t].[UpdatedBy] = @UpdatedBy
WHERE
	[t].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'new2'
DECLARE @Version Integer -- Int32
SET     @Version = 10
DECLARE @UpdatedAt Date -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarWChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = @Name,
	[t].[Version] = [t].[Version] + @Version,
	[t].[UpdatedAt] = @UpdatedAt,
	[t].[UpdatedBy] = @UpdatedBy
WHERE
	[t].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]
ORDER BY
	[t1].[Id]

