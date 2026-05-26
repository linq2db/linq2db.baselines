-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'stale'
DECLARE @Version Int -- Int32
SET     @Version = 3
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Version Int -- Int32
SET     @Version = 3

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Version] = ?,
	[t1].[CreatedAt] = ?,
	[t1].[CreatedBy] = ?,
	[t1].[UpdatedAt] = ?,
	[t1].[UpdatedBy] = ?
WHERE
	[t1].[Id] = ? AND ? > [t1].[Version]

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @Version Int -- Int32
SET     @Version = 10
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Version Int -- Int32
SET     @Version = 10

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Version] = ?,
	[t1].[CreatedAt] = ?,
	[t1].[CreatedBy] = ?,
	[t1].[UpdatedAt] = ?,
	[t1].[UpdatedBy] = ?
WHERE
	[t1].[Id] = ? AND ? > [t1].[Version]

-- Access.Jet.Odbc AccessODBC

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

