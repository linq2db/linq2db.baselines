-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'async'
DECLARE @Version Int -- Int32
SET     @Version = 3
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = ?,
	[t].[Version] = ?,
	[t].[UpdatedAt] = ?,
	[t].[UpdatedBy] = ?
WHERE
	[t].[Id] = ?

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

