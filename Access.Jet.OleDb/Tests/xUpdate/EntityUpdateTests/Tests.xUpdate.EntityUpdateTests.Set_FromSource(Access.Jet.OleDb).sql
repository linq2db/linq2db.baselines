-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @UpdatedAt Date -- DateTime
SET     @UpdatedAt = NULL
DECLARE @Name_1 VarWChar(5) -- String
SET     @Name_1 = 'alice'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = @Name,
	[t].[Version] = @Version,
	[t].[UpdatedAt] = @UpdatedAt,
	[t].[UpdatedBy] = @Name_1
WHERE
	[t].[Id] = @Id

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

