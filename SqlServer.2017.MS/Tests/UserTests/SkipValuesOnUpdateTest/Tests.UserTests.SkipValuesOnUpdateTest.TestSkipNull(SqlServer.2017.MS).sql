-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tommy'
DECLARE @Age Int -- Int32
SET     @Age = NULL

INSERT INTO [SkipOnUpdateNulls]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateNulls]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnUpdateNulls].[Id] = @Id

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Franki'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateNulls]
SET
	[Name] = @Name
WHERE
	[SkipOnUpdateNulls].[Id] = @Id

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1

