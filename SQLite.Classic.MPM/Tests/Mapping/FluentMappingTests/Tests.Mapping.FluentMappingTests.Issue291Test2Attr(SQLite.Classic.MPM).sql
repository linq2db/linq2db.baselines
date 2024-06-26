﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [my_table]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [my_table]
(
	[my_col1]      NVarChar(255)     NULL,
	[itemType]     INTEGER       NOT NULL,
	[my_other_col] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @MyCol1 NVarChar(6) -- String
SET     @MyCol1 = 'MyCol1'
DECLARE @itemType  -- Int32
SET     @itemType = 0
DECLARE @SomeOtherField NVarChar -- String
SET     @SomeOtherField = NULL

INSERT INTO [my_table]
(
	[my_col1],
	[itemType],
	[my_other_col]
)
VALUES
(
	@MyCol1,
	@itemType,
	@SomeOtherField
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @MyCol1 NVarChar -- String
SET     @MyCol1 = NULL
DECLARE @itemType  -- Int32
SET     @itemType = 1
DECLARE @SomeOtherField NVarChar -- String
SET     @SomeOtherField = NULL

INSERT INTO [my_table]
(
	[my_col1],
	[itemType],
	[my_other_col]
)
VALUES
(
	@MyCol1,
	@itemType,
	@SomeOtherField
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[itemType],
	[t1].[my_col1],
	[t1].[my_other_col]
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [my_table]

