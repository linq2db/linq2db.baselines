-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [SkipOnInsertFluent]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SQLite.MS SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertFluent] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

