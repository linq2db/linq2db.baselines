-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite

SELECT
	[t1].[itemType],
	[t1].[my_col1],
	[t1].[my_other_col]
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1
LIMIT 1

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[my_table] [t1]
WHERE
	[t1].[itemType] <> 1

