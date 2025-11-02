-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 2

INSERT INTO [PR_1598_Insert_Table_Cache]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 2
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Insert_Table_Cache].[Id] = @Id

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

