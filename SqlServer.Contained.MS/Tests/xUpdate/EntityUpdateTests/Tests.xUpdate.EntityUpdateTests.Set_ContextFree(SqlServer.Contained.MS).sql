-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'x'
DECLARE @Version Int -- Int32
SET     @Version = 5
DECLARE @stamp DateTime2
SET     @stamp = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @stamp,
	[UpdatedBy] = @UpdatedBy
WHERE
	[EntityUpdateTest].[Id] = @Id

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

