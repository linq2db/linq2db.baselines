-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Smith'

INSERT INTO [SkipOnInsertTable]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertTable] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tommy'

INSERT INTO [SkipOnInsertTable]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertTable] [t]
WHERE
	[t].[Id] = 2

