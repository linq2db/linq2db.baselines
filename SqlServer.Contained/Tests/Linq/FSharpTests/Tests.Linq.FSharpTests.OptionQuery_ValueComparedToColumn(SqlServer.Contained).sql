-- SqlServer.Contained SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'a'
DECLARE @Age Int -- Int32
SET     @Age = 5

INSERT INTO [OptRow]
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

-- SqlServer.Contained SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = NULL

INSERT INTO [OptRow]
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

-- SqlServer.Contained SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'b'
DECLARE @Age Int -- Int32
SET     @Age = 7

INSERT INTO [OptRow]
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

-- SqlServer.Contained SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Name NVarChar(4000) -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = 4

INSERT INTO [OptRow]
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

-- SqlServer.Contained SqlServer.2025
SELECT
	[x].[Id]
FROM
	[OptRow] [x]
WHERE
	[x].[Age] = [x].[Id]

