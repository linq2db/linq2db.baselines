-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 3
DECLARE @p_3 Integer -- Int32
SET     @p_3 = 4
DECLARE @p_4 Integer -- Int32
SET     @p_4 = 5
DECLARE @p_5 Integer -- Int32
SET     @p_5 = 6
DECLARE @p_6 Integer -- Int32
SET     @p_6 = 7
DECLARE @p_7 Integer -- Int32
SET     @p_7 = 8
DECLARE @p_8 Integer -- Int32
SET     @p_8 = 9

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] <= @p
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_1]
		WHERE
			[i_1].[Id] <= @p_1
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_2]
		WHERE
			[i_2].[Id] <= @p_2
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_3]
		WHERE
			[i_3].[Id] <= @p_3
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_4]
		WHERE
			[i_4].[Id] <= @p_4
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_5]
		WHERE
			[i_5].[Id] <= @p_5
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_6]
		WHERE
			[i_6].[Id] <= @p_6
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_7]
		WHERE
			[i_7].[Id] <= @p_7
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_8]
		WHERE
			[i_8].[Id] <= @p_8
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 9

SELECT
	COUNT(*)
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] <= @p

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	COUNT(*)
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] <= @p

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 9

SELECT
	COUNT(*)
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] <= @p

