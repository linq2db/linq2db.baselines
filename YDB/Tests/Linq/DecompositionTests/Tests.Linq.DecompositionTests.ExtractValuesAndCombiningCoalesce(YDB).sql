-- YDB Ydb

SELECT
	t.Kind = 1 OR t.Kind = 2 as Top,
	t.Kind as Kind,
	Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
	t.Color as Color,
	Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
	t.Style as Style_1,
	t.Kind = 1 OR t.Kind = 3 as Bottom,
	Unicode::Substring(t.ItemCode, 5 - 1, 2) as ItemCode_2,
	Unicode::Substring(t.ItemCode, 7 - 1, 2) as ItemCode_3
FROM
	Item t

-- YDB Ydb

SELECT
	t1.ItemId as ItemId,
	t1.Kind as Kind,
	t1.ItemCode as ItemCode,
	t1.Style as Style_1,
	t1.Color as Color
FROM
	Item t1

-- YDB Ydb

SELECT
	x_1.Color_1 as Color,
	x_1.Kind as Kind,
	x_1.ItemCode as ItemCode,
	x_1.Color_3 as Color_1,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Style_1 as Style_1,
	x_1.Color_4 as Color_2,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.ItemCode_3 as ItemCode_3
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as Color,
			x.Kind = 1 OR x.Kind = 2 as Color_1,
			x.Kind = 1 as Color_2,
			Unicode::Substring(x.ItemCode, 1 - 1, 2) as ItemCode,
			x.Color as Color_3,
			x.Kind = 1 OR x.Kind = 3 as Color_4,
			Unicode::Substring(x.ItemCode, 5 - 1, 2) as ItemCode_1,
			x.Kind as Kind,
			Unicode::Substring(x.ItemCode, 3 - 1, 2) as ItemCode_2,
			x.Style as Style_1,
			Unicode::Substring(x.ItemCode, 7 - 1, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	NOT (x_1.Color AND (x_1.Color_1 AND x_1.Color_2 OR NOT x_1.Color_1) OR NOT x_1.Color AND NOT x_1.Color_4)

-- YDB Ydb

SELECT
	t1.ItemId as ItemId,
	t1.Kind as Kind,
	t1.ItemCode as ItemCode,
	t1.Style as Style_1,
	t1.Color as Color
FROM
	Item t1

-- YDB Ydb

SELECT
	x_1.Color_1 as Color,
	x_1.Kind as Kind,
	x_1.ItemCode as ItemCode,
	x_1.Color_3 as Color_1,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Style_1 as Style_1,
	x_1.Color_4 as Color_2,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.ItemCode_3 as ItemCode_3
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as Color,
			x.Kind = 1 OR x.Kind = 2 as Color_1,
			x.Kind = 1 as Color_2,
			Unicode::Substring(x.ItemCode, 1 - 1, 2) as ItemCode,
			x.Color as Color_3,
			x.Kind = 1 OR x.Kind = 3 as Color_4,
			Unicode::Substring(x.ItemCode, 5 - 1, 2) as ItemCode_1,
			x.Kind as Kind,
			Unicode::Substring(x.ItemCode, 3 - 1, 2) as ItemCode_2,
			x.Style as Style_1,
			Unicode::Substring(x.ItemCode, 7 - 1, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	x_1.Color AND (x_1.Color_1 AND x_1.Color_2 OR NOT x_1.Color_1) OR
	NOT x_1.Color AND NOT x_1.Color_4

-- YDB Ydb

SELECT
	t1.ItemId as ItemId,
	t1.Kind as Kind,
	t1.ItemCode as ItemCode,
	t1.Style as Style_1,
	t1.Color as Color
FROM
	Item t1

-- YDB Ydb

SELECT
	x_1.Size_2 as Size_1,
	x_1.Kind as Kind,
	x_1.ItemCode_2 as ItemCode,
	x_1.Color as Color,
	x_1.ItemCode as ItemCode_1,
	x_1.Style_1 as Style_1,
	x_1.Size_3 as Size_2,
	x_1.ItemCode_3 as ItemCode_2,
	x_1.ItemCode_1 as ItemCode_3
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as Size_1,
			x.Kind = 1 OR x.Kind = 2 as Size_2,
			Unicode::Substring(x.ItemCode, 3 - 1, 2) as ItemCode,
			x.Style as Style_1,
			x.Kind = 1 OR x.Kind = 3 as Size_3,
			x.Kind = 1 as Size_4,
			Unicode::Substring(x.ItemCode, 7 - 1, 2) as ItemCode_1,
			x.Kind as Kind,
			Unicode::Substring(x.ItemCode, 1 - 1, 2) as ItemCode_2,
			x.Color as Color,
			Unicode::Substring(x.ItemCode, 5 - 1, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	NOT (NOT x_1.Size_1 AND (x_1.Size_3 AND x_1.Size_4 OR NOT x_1.Size_3))

-- YDB Ydb

SELECT
	t1.ItemId as ItemId,
	t1.Kind as Kind,
	t1.ItemCode as ItemCode,
	t1.Style as Style_1,
	t1.Color as Color
FROM
	Item t1

-- YDB Ydb

SELECT
	x_1.Size_2 as Size_1,
	x_1.Kind as Kind,
	x_1.ItemCode_2 as ItemCode,
	x_1.Color as Color,
	x_1.ItemCode as ItemCode_1,
	x_1.Style_1 as Style_1,
	x_1.Size_3 as Size_2,
	x_1.ItemCode_3 as ItemCode_2,
	x_1.ItemCode_1 as ItemCode_3
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as Size_1,
			x.Kind = 1 OR x.Kind = 2 as Size_2,
			Unicode::Substring(x.ItemCode, 3 - 1, 2) as ItemCode,
			x.Style as Style_1,
			x.Kind = 1 OR x.Kind = 3 as Size_3,
			x.Kind = 1 as Size_4,
			Unicode::Substring(x.ItemCode, 7 - 1, 2) as ItemCode_1,
			x.Kind as Kind,
			Unicode::Substring(x.ItemCode, 1 - 1, 2) as ItemCode_2,
			x.Color as Color,
			Unicode::Substring(x.ItemCode, 5 - 1, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	NOT x_1.Size_1 AND (x_1.Size_3 AND x_1.Size_4 OR NOT x_1.Size_3)

-- YDB Ydb

SELECT
	t1.ItemId as ItemId,
	t1.Kind as Kind,
	t1.ItemCode as ItemCode,
	t1.Style as Style_1,
	t1.Color as Color
FROM
	Item t1

