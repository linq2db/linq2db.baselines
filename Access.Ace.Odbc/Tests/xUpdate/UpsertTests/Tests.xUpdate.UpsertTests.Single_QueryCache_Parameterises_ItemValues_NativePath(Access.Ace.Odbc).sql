-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
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
	[t1].[Id] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
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
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Int -- Int32
SET     @Version = 20
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 2

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
	[t1].[Id] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Int -- Int32
SET     @Version = 20
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL

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
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]
ORDER BY
	[t1].[Id]

