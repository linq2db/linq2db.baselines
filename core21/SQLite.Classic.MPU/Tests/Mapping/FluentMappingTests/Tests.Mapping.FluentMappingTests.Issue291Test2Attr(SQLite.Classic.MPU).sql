﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [my_table]
(
	[my_col1]      NVarChar(255)     NULL,
	[itemType]     INTEGER       NOT NULL,
	[my_other_col] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[my_col1],
	[t1].[itemType],
	[t1].[my_other_col]
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [my_table]

