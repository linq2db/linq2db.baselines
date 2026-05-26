-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Version] = ?,
	[t1].[CreatedAt] = ?,
	[t1].[CreatedBy] = 'second-root',
	[t1].[UpdatedAt] = ?,
	[t1].[UpdatedBy] = ?
WHERE
	[t1].[Id] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @UpdatedAt DateTime
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
	?,
	?,
	?,
	?,
	'second-root',
	?,
	'second-branch'
)

-- Access.Ace.Odbc AccessODBC

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

