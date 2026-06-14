-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'n'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @stamp DateTime2
SET     @stamp = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
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

-- SqlServer.2014

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]

