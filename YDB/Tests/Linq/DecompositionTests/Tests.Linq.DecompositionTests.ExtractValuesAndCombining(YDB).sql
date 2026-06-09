-- YDB Ydb

SELECT
	x.Color as Color,
	x.Kind as Kind,
	x.ItemCode as ItemCode,
	x.Color_2 as Color_1,
	x.ItemCode_1 as ItemCode_1,
	x.Style_1 as Style_1
FROM
	(
		SELECT
			i.Kind = 1 OR i.Kind = 2 as Color,
			i.Kind = 1 as Color_1,
			Unicode::Substring(i.ItemCode, 1 - 1, 2) as ItemCode,
			i.Color as Color_2,
			i.Kind as Kind,
			Unicode::Substring(i.ItemCode, 3 - 1, 2) as ItemCode_1,
			i.Style as Style_1
		FROM
			Item i
		WHERE
			i.Kind = 1 OR i.Kind = 2
	) x
WHERE
	NOT (x.Color AND x.Color_1 OR NOT x.Color)

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
	x.Color as Color,
	x.ItemCode as ItemCode,
	x.Color_1 as Color_1,
	x.Kind as Kind,
	x.ItemCode_1 as ItemCode_1,
	x.Style_1 as Style_1
FROM
	(
		SELECT
			i.Kind = 1 OR i.Kind = 3 as Color,
			Unicode::Substring(i.ItemCode, 5 - 1, 2) as ItemCode,
			i.Color as Color_1,
			i.Kind as Kind,
			Unicode::Substring(i.ItemCode, 7 - 1, 2) as ItemCode_1,
			i.Style as Style_1
		FROM
			Item i
		WHERE
			i.Kind = 1 OR i.Kind = 3
	) x
WHERE
	x.Color

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
	t1.Top as Top,
	t1.Color as Color,
	t1.ItemCode as ItemCode,
	t1.Name as Name,
	CAST(NULL AS Text) as ItemCode_1,
	CAST(NULL AS Text) as Name_1,
	t1.ItemCode_1 as ItemCode_2,
	t1.Name_1 as Name_2,
	CAST(NULL AS Bool) as c1,
	CAST(NULL AS Text) as ItemCode_3,
	CAST(NULL AS Text) as Name_3
FROM
	(
		SELECT
			t.Kind = 1 OR t.Kind = 2 as Top,
			Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
			t.Color as Name,
			Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
			t.Style as Name_1,
			t.Kind = 1 as Color
		FROM
			Item t
	) t1
WHERE
	t1.Top
UNION ALL
SELECT
	t2.Bottom as Top,
	CAST(NULL AS Bool) as Color,
	CAST(NULL AS Text) as ItemCode,
	CAST(NULL AS Text) as Name,
	t2.ItemCode as ItemCode_1,
	t2.Color as Name_1,
	CAST(NULL AS Text) as ItemCode_2,
	CAST(NULL AS Text) as Name_2,
	t2.Size_1 as c1,
	t2.ItemCode_1 as ItemCode_3,
	t2.Style_1 as Name_3
FROM
	(
		SELECT
			t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
			Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
			t_1.Color as Color,
			Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
			t_1.Style as Style_1,
			t_1.Kind = 1 as Size_1
		FROM
			Item t_1
	) t2
WHERE
	t2.Bottom

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
	x_1.Color as Color,
	x_1.Color_1 as Color_1,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.Size_1 as Size_1,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.Top as Color,
			x.Color_1 as Color_1,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as Size_1,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as Color_1
				FROM
					Item t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Color,
			CAST(NULL AS Bool) as Color_1,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1 as Size_1,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	NOT (x_1.Color AND x_1.Color_1 IS NOT NULL AND x_1.Color_1 OR NOT x_1.Color)

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
	x_1.Color as Color,
	x_1.Color_1 as Color_1,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.Size_1 as Size_1,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.Top as Color,
			x.Color_1 as Color_1,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as Size_1,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as Color_1
				FROM
					Item t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Color,
			CAST(NULL AS Bool) as Color_1,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1 as Size_1,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	x_1.Color AND x_1.Color_1 IS NOT NULL AND x_1.Color_1 OR
	NOT x_1.Color

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
	x_1.Size_1 as Size_1,
	x_1.Color as Color,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.Size_2 as Size_2,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.Top as Size_1,
			x.Color_1 as Color,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as Size_2,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as Color_1
				FROM
					Item t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Size_1,
			CAST(NULL AS Bool) as Color,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1 as Size_2,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	NOT (x_1.Size_1 AND x_1.Color IS NULL AND x_1.Size_2 OR NOT x_1.Size_1)

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
	x_1.Size_1 as Size_1,
	x_1.Color as Color,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.Size_2 as Size_2,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.Top as Size_1,
			x.Color_1 as Color,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as Size_2,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as Color_1
				FROM
					Item t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Size_1,
			CAST(NULL AS Bool) as Color,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1 as Size_2,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	x_1.Size_1 AND x_1.Color IS NULL AND x_1.Size_2 OR
	NOT x_1.Size_1

-- YDB Ydb

SELECT
	t1.ItemId as ItemId,
	t1.Kind as Kind,
	t1.ItemCode as ItemCode,
	t1.Style as Style_1,
	t1.Color as Color
FROM
	Item t1

