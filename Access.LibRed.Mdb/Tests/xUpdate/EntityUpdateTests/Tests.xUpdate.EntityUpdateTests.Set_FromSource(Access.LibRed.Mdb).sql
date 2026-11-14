-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest] [t]
SET
	[t].[Name] = @Name,
	[t].[Version] = @Version,
	[t].[UpdatedAt] = @UpdatedAt,
	[t].[UpdatedBy] = @Name
WHERE
	[t].[Id] = @Id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

