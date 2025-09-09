BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age  -- Int32
SET     @Age = 2

INSERT INTO [PR_1598_Update_Fluent_Table]
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

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age  -- Int32
SET     @Age = 18
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Fluent_Table].[Id] = @Id

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table]
SET
	[Name] = @Name
WHERE
	[PR_1598_Update_Fluent_Table].[Id] = @Id

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

