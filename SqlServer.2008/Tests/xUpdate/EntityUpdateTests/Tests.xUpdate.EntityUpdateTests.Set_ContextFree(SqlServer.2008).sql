-- SqlServer.2008
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'x'
DECLARE @Version Int -- Int32
SET     @Version = 5
DECLARE @stamp DateTime2
SET     @stamp = CAST('2026-06-01T00:00:00.0000000' AS DATETIME2)
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

-- SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

