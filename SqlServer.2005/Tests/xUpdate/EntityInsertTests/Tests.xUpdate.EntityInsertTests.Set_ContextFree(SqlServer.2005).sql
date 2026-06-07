-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'n'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @stamp DateTime
SET     @stamp = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = NULL

INSERT INTO [EntityInsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@stamp,
	@CreatedBy
)

-- SqlServer.2005

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]

