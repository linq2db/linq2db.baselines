BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PR_1598_Insert_Null_Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PR_1598_Insert_Null_Table]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  INTEGER           NULL,

	CONSTRAINT [PK_PR_1598_Insert_Null_Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO [PR_1598_Insert_Null_Table]
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
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Null_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PR_1598_Insert_Null_Table]

