-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'n'
DECLARE @Version Int -- Int32
SET     @Version = 101
DECLARE @stamp DateTime2
SET     @stamp = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)

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
	@stamp
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

