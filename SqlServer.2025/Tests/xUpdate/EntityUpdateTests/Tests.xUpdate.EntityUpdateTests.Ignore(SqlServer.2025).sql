-- SqlServer.2025
DECLARE @Version Int -- Int32
SET     @Version = 99
DECLARE @UpdatedAt DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest]
SET
	[Version] = @Version,
	[UpdatedAt] = @UpdatedAt,
	[UpdatedBy] = @UpdatedBy
WHERE
	[EntityUpdateTest].[Id] = @Id

-- SqlServer.2025

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

