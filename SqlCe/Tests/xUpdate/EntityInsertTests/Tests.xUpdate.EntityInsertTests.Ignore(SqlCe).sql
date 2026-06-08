-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL

INSERT INTO [EntityInsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt
)

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version] as [Version_1],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]

