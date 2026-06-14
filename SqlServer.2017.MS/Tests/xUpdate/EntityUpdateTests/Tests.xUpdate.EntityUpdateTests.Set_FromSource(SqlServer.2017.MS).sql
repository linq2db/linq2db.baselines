-- SqlServer.2017.MS SqlServer.2017
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'alice'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @UpdatedAt DateTime2
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

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

