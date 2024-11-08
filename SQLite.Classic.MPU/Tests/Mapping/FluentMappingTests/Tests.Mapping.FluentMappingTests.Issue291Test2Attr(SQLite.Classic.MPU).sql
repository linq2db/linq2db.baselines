BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [my_table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [my_table]
(
	[my_col1]      NVarChar(255)     NULL,
	[my_other_col] NVarChar(255)     NULL,
	[itemType]     INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @MyCol1 NVarChar(6) -- String
SET     @MyCol1 = 'MyCol1'
DECLARE @SomeOtherField NVarChar -- String
SET     @SomeOtherField = NULL
DECLARE @itemType  -- Int32
SET     @itemType = 0

INSERT INTO [my_table]
(
	[my_col1],
	[my_other_col],
	[itemType]
)
VALUES
(
	@MyCol1,
	@SomeOtherField,
	@itemType
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @MyCol1 NVarChar -- String
SET     @MyCol1 = NULL
DECLARE @SomeOtherField NVarChar -- String
SET     @SomeOtherField = NULL
DECLARE @itemType  -- Int32
SET     @itemType = 1

INSERT INTO [my_table]
(
	[my_col1],
	[my_other_col],
	[itemType]
)
VALUES
(
	@MyCol1,
	@SomeOtherField,
	@itemType
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[my_col1],
	[t1].[my_other_col],
	[t1].[itemType]
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [my_table]

