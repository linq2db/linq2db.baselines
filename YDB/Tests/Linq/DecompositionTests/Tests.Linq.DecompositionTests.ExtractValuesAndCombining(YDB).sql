-- YDB Ydb
SELECT
	x.c1 as c1,
	x.Kind as Kind,
	x.ItemCode as ItemCode,
	x.Color as Color,
	x.ItemCode_1 as ItemCode_1,
	x.Style_1 as Style_1
FROM
	(
		SELECT
			i.Kind = 1 OR i.Kind = 2 as c1,
			i.Kind = 1 as c2,
			Unicode::Substring(i.ItemCode, 1 - 1, 2) as ItemCode,
			i.Color as Color,
			i.Kind as Kind,
			Unicode::Substring(i.ItemCode, 3 - 1, 2) as ItemCode_1,
			i.Style as Style_1
		FROM
			Item i
		WHERE
			i.Kind = 1 OR i.Kind = 2
	) x
WHERE
	NOT (x.c1 AND x.c2 OR NOT x.c1)

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
	x.c1 as c1,
	x.ItemCode as ItemCode,
	x.Color as Color,
	x.Kind as Kind,
	x.ItemCode_1 as ItemCode_1,
	x.Style_1 as Style_1
FROM
	(
		SELECT
			i.Kind = 1 OR i.Kind = 3 as c1,
			Unicode::Substring(i.ItemCode, 5 - 1, 2) as ItemCode,
			i.Color as Color,
			i.Kind as Kind,
			Unicode::Substring(i.ItemCode, 7 - 1, 2) as ItemCode_1,
			i.Style as Style_1
		FROM
			Item i
		WHERE
			i.Kind = 1 OR i.Kind = 3
	) x
WHERE
	x.c1

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
	t1.c1 as c1,
	t1.c2 as c2,
	t1.ItemCode as ItemCode,
	t1.Name as Name,
	CAST(NULL AS Text) as ItemCode_1,
	CAST(NULL AS Text) as Name_1,
	t1.ItemCode_1 as ItemCode_2,
	t1.Name_1 as Name_2,
	CAST(NULL AS Bool) as c3,
	CAST(NULL AS Text) as ItemCode_3,
	CAST(NULL AS Text) as Name_3
FROM
	(
		SELECT
			t.Kind = 1 OR t.Kind = 2 as c1,
			Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
			t.Color as Name,
			Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
			t.Style as Name_1,
			t.Kind = 1 as c2
		FROM
			Item t
	) t1
WHERE
	t1.c1
UNION ALL
SELECT
	t2.c1 as c1,
	CAST(NULL AS Bool) as c2,
	CAST(NULL AS Text) as ItemCode,
	CAST(NULL AS Text) as Name,
	t2.ItemCode as ItemCode_1,
	t2.Color as Name_1,
	CAST(NULL AS Text) as ItemCode_2,
	CAST(NULL AS Text) as Name_2,
	t2.c2 as c3,
	t2.ItemCode_1 as ItemCode_3,
	t2.Style_1 as Name_3
FROM
	(
		SELECT
			t_1.Kind = 1 OR t_1.Kind = 3 as c1,
			Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
			t_1.Color as Color,
			Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
			t_1.Style as Style_1,
			t_1.Kind = 1 as c2
		FROM
			Item t_1
	) t2
WHERE
	t2.c1

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
	x_1.c1 as c1,
	x_1.c2 as c2,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.c3 as c3,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.c1 as c1,
			x.c2 as c2,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as c3,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as c1,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as c2
				FROM
					Item t
			) x
		WHERE
			x.c1
		UNION ALL
		SELECT
			t1.c1 as c1,
			CAST(NULL AS Bool) as c2,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.c2 as c3,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as c1,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as c2
				FROM
					Item t_1
			) t1
		WHERE
			t1.c1
	) x_1
WHERE
	NOT (x_1.c1 AND x_1.c2 IS NOT NULL AND x_1.c2 OR NOT x_1.c1)

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
	x_1.c1 as c1,
	x_1.c2 as c2,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.c3 as c3,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.c1 as c1,
			x.c2 as c2,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as c3,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as c1,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as c2
				FROM
					Item t
			) x
		WHERE
			x.c1
		UNION ALL
		SELECT
			t1.c1 as c1,
			CAST(NULL AS Bool) as c2,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.c2 as c3,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as c1,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as c2
				FROM
					Item t_1
			) t1
		WHERE
			t1.c1
	) x_1
WHERE
	x_1.c1 AND x_1.c2 IS NOT NULL AND x_1.c2 OR NOT x_1.c1

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
	x_1.c1 as c1,
	x_1.c2 as c2,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.c3 as c3,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.c1 as c1,
			x.c2 as c2,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as c3,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as c1,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as c2
				FROM
					Item t
			) x
		WHERE
			x.c1
		UNION ALL
		SELECT
			t1.c1 as c1,
			CAST(NULL AS Bool) as c2,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.c2 as c3,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as c1,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as c2
				FROM
					Item t_1
			) t1
		WHERE
			t1.c1
	) x_1
WHERE
	NOT (x_1.c1 AND x_1.c2 IS NULL AND x_1.c3 OR NOT x_1.c1)

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
	x_1.c1 as c1,
	x_1.c2 as c2,
	x_1.ItemCode as ItemCode,
	x_1.Name as Name,
	x_1.ItemCode_2 as ItemCode_1,
	x_1.Name_2 as Name_1,
	x_1.ItemCode_1 as ItemCode_2,
	x_1.Name_1 as Name_2,
	x_1.c3 as c3,
	x_1.ItemCode_3 as ItemCode_3,
	x_1.Name_3 as Name_3
FROM
	(
		SELECT
			x.c1 as c1,
			x.c2 as c2,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS Text) as ItemCode_2,
			CAST(NULL AS Text) as Name_2,
			CAST(NULL AS Bool) as c3,
			CAST(NULL AS Text) as ItemCode_3,
			CAST(NULL AS Text) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as c1,
					Unicode::Substring(t.ItemCode, 1 - 1, 2) as ItemCode,
					t.Color as Color,
					Unicode::Substring(t.ItemCode, 3 - 1, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as c2
				FROM
					Item t
			) x
		WHERE
			x.c1
		UNION ALL
		SELECT
			t1.c1 as c1,
			CAST(NULL AS Bool) as c2,
			CAST(NULL AS Text) as ItemCode,
			CAST(NULL AS Text) as Name,
			CAST(NULL AS Text) as ItemCode_1,
			CAST(NULL AS Text) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.c2 as c3,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as c1,
					Unicode::Substring(t_1.ItemCode, 5 - 1, 2) as ItemCode,
					t_1.Color as Color,
					Unicode::Substring(t_1.ItemCode, 7 - 1, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as c2
				FROM
					Item t_1
			) t1
		WHERE
			t1.c1
	) x_1
WHERE
	x_1.c1 AND x_1.c2 IS NULL AND x_1.c3 OR NOT x_1.c1

-- YDB Ydb
SELECT
	t1.ItemId as ItemId,
	t1.Kind as Kind,
	t1.ItemCode as ItemCode,
	t1.Style as Style_1,
	t1.Color as Color
FROM
	Item t1

