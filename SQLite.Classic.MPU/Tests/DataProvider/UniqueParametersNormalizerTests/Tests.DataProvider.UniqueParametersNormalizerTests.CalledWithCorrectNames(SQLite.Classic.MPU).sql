BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table1]
(
	[Id]     INTEGER       NOT NULL,
	[Field1] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table2]
(
	[Table1Id] INTEGER       NOT NULL,
	[Field2]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table3]
(
	[Table1Id] INTEGER       NOT NULL,
	[Field3]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @search NVarChar(5) -- String
SET     @search = 'test%'
DECLARE @search_1 NVarChar(4) -- String
SET     @search_1 = 'test'
DECLARE @search_2 NVarChar(5) -- String
SET     @search_2 = 'test%'

SELECT
	[row1].[Id]
FROM
	[table1] [row1]
		INNER JOIN [table2] [row2] ON [row1].[Id] = [row2].[Table1Id]
WHERE
	[row2].[Field2] LIKE @search ESCAPE '~'
UNION
SELECT
	[row1_1].[Id]
FROM
	[table1] [row1_1]
		INNER JOIN [table3] [row3] ON [row1_1].[Id] = [row3].[Table1Id]
WHERE
	[row3].[Field3] = @search_1 AND [row3].[Field3] IS NOT NULL
UNION
SELECT
	[row1_2].[Id]
FROM
	[table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2 ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [table1]

