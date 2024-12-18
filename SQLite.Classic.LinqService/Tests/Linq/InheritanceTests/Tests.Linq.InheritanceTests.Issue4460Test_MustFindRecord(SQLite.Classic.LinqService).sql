BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4460Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4460Table]
(
	[Id]      INTEGER       NOT NULL,
	[Code]    NVarChar(255)     NULL,
	[Name]    NVarChar(255)     NULL,
	[Surname] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname NVarChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]
WHERE
	[t1].[Code] = 'GrandChild' AND [t1].[Code] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4460Table]

