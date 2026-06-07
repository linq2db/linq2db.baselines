-- SqlCe
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Int -- Int32
SET     @Version = 5
DECLARE @stamp DateTime
SET     @stamp = '2026-06-01 00:00:00.000'
DECLARE @UpdatedBy NVarChar -- String
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

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version] as [Version_1],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]

