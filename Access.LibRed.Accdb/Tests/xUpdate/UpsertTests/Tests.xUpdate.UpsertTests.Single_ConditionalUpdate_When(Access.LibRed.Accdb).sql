-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'stale'
DECLARE @Version  -- Int32
SET     @Version = 3
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[CreatedBy] = @CreatedBy,
	[t1].[UpdatedAt] = @UpdatedAt,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id AND @Version > [t1].[Version]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @Version  -- Int32
SET     @Version = 10
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[CreatedBy] = @CreatedBy,
	[t1].[UpdatedAt] = @UpdatedAt,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id AND @Version > [t1].[Version]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

