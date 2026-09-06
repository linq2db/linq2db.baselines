-- SqlServer.2022
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

-- SqlServer.2022
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

-- SqlServer.2022
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

-- SqlServer.2022
SELECT
	[x].[Id],
	[x].[Name],
	[x].[Age]
FROM
	[OptRow] [x]
WHERE
	[x].[Name] IS NOT NULL

