-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age  -- Int32
SET     @Age = 20

INSERT INTO [PR_1598_Mixed_Table]
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

-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.MS SQLite
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Mixed_Table]
SET
	[Age] = @Age
WHERE
	[PR_1598_Mixed_Table].[Id] = @Id

-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Age  -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Mixed_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2
LIMIT 1

-- SQLite.MS SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age  -- Int32
SET     @Age = 25
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[PR_1598_Mixed_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Mixed_Table].[Id] = @Id

-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2
LIMIT 1

