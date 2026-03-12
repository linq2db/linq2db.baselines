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

-- SQLite.Classic.MPU SQLite.Classic SQLite
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[o].[my_col1],
	[o].[itemType],
	[o].[my_other_col]
FROM
	[my_table] [o]
WHERE
	[o].[my_col1] = 'MyCol1'
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[my_table] [t1]

