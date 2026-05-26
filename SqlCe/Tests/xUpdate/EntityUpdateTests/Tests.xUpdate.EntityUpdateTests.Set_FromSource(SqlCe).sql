-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @UpdatedAt,
	[UpdatedBy] = @Name
WHERE
	[EntityUpdateTest].[Id] = @Id

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version] as [Version_1],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

