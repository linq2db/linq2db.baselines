﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [my_table]
(
	[my_col1]      NVarChar(255)     NULL,
	[itemType]     INTEGER       NOT NULL,
	[my_other_col] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @MyCol1 NVarChar(6) -- String
SET     @MyCol1 = 'MyCol2'
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
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[o].[my_col1],
	[o].[itemType],
	[o].[my_other_col]
FROM
	[my_table] [o]
WHERE
	[o].[my_col1] = 'MyCol1'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[my_table] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [my_table]

