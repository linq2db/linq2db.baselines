-- SqlServer.2012
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'updated'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @UpdatedAt DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @UpdatedAt,
	[UpdatedBy] = @UpdatedBy
WHERE
	[EntityUpdateTest].[Id] = @Id

-- SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

