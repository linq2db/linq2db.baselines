BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PR_1598_Insert_Table_Cache]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PR_1598_Insert_Table_Cache]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  INTEGER           NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [PR_1598_Insert_Table_Cache] AS [t1]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = @Name

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [PR_1598_Insert_Table_Cache] AS [t1]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = @Name

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PR_1598_Insert_Table_Cache]

