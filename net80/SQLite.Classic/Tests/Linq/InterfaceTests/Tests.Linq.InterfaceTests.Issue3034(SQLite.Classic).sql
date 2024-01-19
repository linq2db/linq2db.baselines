BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MyTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MyTable]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [MyTable]
(
	[Id],
	[Name]
)
VALUES
(1,'old_name'),
(2,'old_name')

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'new_name'

UPDATE
	[MyTable]
SET
	[Name] = @Name
WHERE
	[MyTable].[Id] = 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[MyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MyTable]

