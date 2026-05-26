-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new1'
DECLARE @Version Int -- Int32
SET     @Version = 5
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
	[t].[Version] = [t].[Version] + ?,
	[t].[UpdatedAt] = ?,
	[t].[UpdatedBy] = ?
WHERE
	[t].[Id] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new2'
DECLARE @Version Int -- Int32
SET     @Version = 10
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = ?,
	[t].[Version] = [t].[Version] + ?,
	[t].[UpdatedAt] = ?,
	[t].[UpdatedBy] = ?
WHERE
	[t].[Id] = ?

-- Access.Ace.Odbc AccessODBC

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

