-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'first'
DECLARE @Version Int -- Int32
SET     @Version = 11
DECLARE @CreatedAt DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'u1'

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
	@CreatedAt,
	@CreatedBy
)

-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'second'
DECLARE @Version Int -- Int32
SET     @Version = 21
DECLARE @CreatedAt DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'u2'

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
	@CreatedAt,
	@CreatedBy
)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]
ORDER BY
	[t1].[Id]

