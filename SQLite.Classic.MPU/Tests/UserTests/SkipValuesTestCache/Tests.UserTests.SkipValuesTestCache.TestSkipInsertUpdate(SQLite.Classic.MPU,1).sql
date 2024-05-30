BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PR_1598_Insert_Table_Cache]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PR_1598_Insert_Table_Cache]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  INTEGER           NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [PR_1598_Insert_Table_Cache]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[Name] = @Name
WHERE
	[PR_1598_Insert_Table_Cache].[Id] = @Id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PR_1598_Insert_Table_Cache]

