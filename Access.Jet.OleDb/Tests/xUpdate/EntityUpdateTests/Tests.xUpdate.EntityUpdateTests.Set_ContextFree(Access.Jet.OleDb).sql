-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Integer -- Int32
SET     @Version = 5
DECLARE @stamp Date -- DateTime
SET     @stamp = #2026-06-01#
DECLARE @UpdatedBy VarWChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = @Name,
	[t].[Version] = @Version,
	[t].[UpdatedAt] = @stamp,
	[t].[UpdatedBy] = @UpdatedBy
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

