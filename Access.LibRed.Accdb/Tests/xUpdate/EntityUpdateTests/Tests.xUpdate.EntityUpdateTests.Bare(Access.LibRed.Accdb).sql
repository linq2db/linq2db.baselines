-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'updated'
DECLARE @Version  -- Int32
SET     @Version = 2
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = @Name,
	[t].[Version] = @Version,
	[t].[UpdatedAt] = @UpdatedAt,
	[t].[UpdatedBy] = @UpdatedBy
WHERE
	[t].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

