-- DuckDB

SELECT
	x.Color,
	x.Kind,
	x.ItemCode,
	x.Color_2,
	x.ItemCode_1,
	x.Style_1
FROM
	(
		SELECT
			i.Kind = 1 OR i.Kind = 2 as Color,
			i.Kind = 1 as Color_1,
			Substring(i.ItemCode, 1, 2) as ItemCode,
			i.Color as Color_2,
			i.Kind,
			Substring(i.ItemCode, 3, 2) as ItemCode_1,
			i."Style" as Style_1
		FROM
			"Item" i
		WHERE
			i.Kind = 1 OR i.Kind = 2
	) x
WHERE
	NOT (x.Color AND x.Color_1 OR NOT x.Color)

-- DuckDB

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1."Style",
	t1.Color
FROM
	"Item" t1

-- DuckDB

SELECT
	x.Color,
	x.ItemCode,
	x.Color_1,
	x.Kind,
	x.ItemCode_1,
	x.Style_1
FROM
	(
		SELECT
			i.Kind = 1 OR i.Kind = 3 as Color,
			Substring(i.ItemCode, 5, 2) as ItemCode,
			i.Color as Color_1,
			i.Kind,
			Substring(i.ItemCode, 7, 2) as ItemCode_1,
			i."Style" as Style_1
		FROM
			"Item" i
		WHERE
			i.Kind = 1 OR i.Kind = 3
	) x
WHERE
	x.Color

-- DuckDB

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1."Style",
	t1.Color
FROM
	"Item" t1

-- DuckDB

SELECT
	t1.Top,
	t1.Color,
	t1.ItemCode,
	t1.Name,
	CAST(NULL AS VARCHAR),
	CAST(NULL AS VARCHAR),
	t1.ItemCode_1,
	t1.Name_1,
	CAST(NULL AS BOOLEAN),
	CAST(NULL AS VARCHAR),
	CAST(NULL AS VARCHAR)
FROM
	(
		SELECT
			t.Kind = 1 OR t.Kind = 2 as Top,
			Substring(t.ItemCode, 1, 2) as ItemCode,
			t.Color as Name,
			Substring(t.ItemCode, 3, 2) as ItemCode_1,
			t."Style" as Name_1,
			t.Kind = 1 as Color
		FROM
			"Item" t
	) t1
WHERE
	t1.Top
UNION ALL
SELECT
	t2.Bottom,
	CAST(NULL AS BOOLEAN),
	CAST(NULL AS VARCHAR),
	CAST(NULL AS VARCHAR),
	t2.ItemCode,
	t2.Color,
	CAST(NULL AS VARCHAR),
	CAST(NULL AS VARCHAR),
	t2.Size_1,
	t2.ItemCode_1,
	t2.Style_1
FROM
	(
		SELECT
			t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
			Substring(t_1.ItemCode, 5, 2) as ItemCode,
			t_1.Color,
			Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
			t_1."Style" as Style_1,
			t_1.Kind = 1 as Size_1
		FROM
			"Item" t_1
	) t2
WHERE
	t2.Bottom

-- DuckDB

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1."Style",
	t1.Color
FROM
	"Item" t1

-- DuckDB

SELECT
	x_1.Color,
	x_1.Color_1,
	x_1.ItemCode,
	x_1.Name,
	x_1.ItemCode_2,
	x_1.Name_2,
	x_1.ItemCode_1,
	x_1.Name_1,
	x_1.Size_1,
	x_1.ItemCode_3,
	x_1.Name_3
FROM
	(
		SELECT
			x.Top as Color,
			x.Color_1,
			x.ItemCode,
			x.Color as Name,
			x.ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS VARCHAR) as ItemCode_2,
			CAST(NULL AS VARCHAR) as Name_2,
			CAST(NULL AS BOOLEAN) as Size_1,
			CAST(NULL AS VARCHAR) as ItemCode_3,
			CAST(NULL AS VARCHAR) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t."Style" as Style_1,
					t.Kind = 1 as Color_1
				FROM
					"Item" t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Color,
			CAST(NULL AS BOOLEAN) as Color_1,
			CAST(NULL AS VARCHAR) as ItemCode,
			CAST(NULL AS VARCHAR) as Name,
			CAST(NULL AS VARCHAR) as ItemCode_1,
			CAST(NULL AS VARCHAR) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1."Style" as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					"Item" t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	NOT (x_1.Color AND x_1.Color_1 IS NOT NULL AND x_1.Color_1 OR NOT x_1.Color)

-- DuckDB

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1."Style",
	t1.Color
FROM
	"Item" t1

-- DuckDB

SELECT
	x_1.Color,
	x_1.Color_1,
	x_1.ItemCode,
	x_1.Name,
	x_1.ItemCode_2,
	x_1.Name_2,
	x_1.ItemCode_1,
	x_1.Name_1,
	x_1.Size_1,
	x_1.ItemCode_3,
	x_1.Name_3
FROM
	(
		SELECT
			x.Top as Color,
			x.Color_1,
			x.ItemCode,
			x.Color as Name,
			x.ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS VARCHAR) as ItemCode_2,
			CAST(NULL AS VARCHAR) as Name_2,
			CAST(NULL AS BOOLEAN) as Size_1,
			CAST(NULL AS VARCHAR) as ItemCode_3,
			CAST(NULL AS VARCHAR) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t."Style" as Style_1,
					t.Kind = 1 as Color_1
				FROM
					"Item" t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Color,
			CAST(NULL AS BOOLEAN) as Color_1,
			CAST(NULL AS VARCHAR) as ItemCode,
			CAST(NULL AS VARCHAR) as Name,
			CAST(NULL AS VARCHAR) as ItemCode_1,
			CAST(NULL AS VARCHAR) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1."Style" as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					"Item" t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	x_1.Color AND x_1.Color_1 IS NOT NULL AND x_1.Color_1 OR
	NOT x_1.Color

-- DuckDB

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1."Style",
	t1.Color
FROM
	"Item" t1

-- DuckDB

SELECT
	x_1.Size_1,
	x_1.Color,
	x_1.ItemCode,
	x_1.Name,
	x_1.ItemCode_2,
	x_1.Name_2,
	x_1.ItemCode_1,
	x_1.Name_1,
	x_1.Size_2,
	x_1.ItemCode_3,
	x_1.Name_3
FROM
	(
		SELECT
			x.Top as Size_1,
			x.Color_1 as Color,
			x.ItemCode,
			x.Color as Name,
			x.ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS VARCHAR) as ItemCode_2,
			CAST(NULL AS VARCHAR) as Name_2,
			CAST(NULL AS BOOLEAN) as Size_2,
			CAST(NULL AS VARCHAR) as ItemCode_3,
			CAST(NULL AS VARCHAR) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t."Style" as Style_1,
					t.Kind = 1 as Color_1
				FROM
					"Item" t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Size_1,
			CAST(NULL AS BOOLEAN) as Color,
			CAST(NULL AS VARCHAR) as ItemCode,
			CAST(NULL AS VARCHAR) as Name,
			CAST(NULL AS VARCHAR) as ItemCode_1,
			CAST(NULL AS VARCHAR) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1 as Size_2,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1."Style" as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					"Item" t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	NOT (x_1.Size_1 AND x_1.Color IS NULL AND x_1.Size_2 OR NOT x_1.Size_1)

-- DuckDB

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1."Style",
	t1.Color
FROM
	"Item" t1

-- DuckDB

SELECT
	x_1.Size_1,
	x_1.Color,
	x_1.ItemCode,
	x_1.Name,
	x_1.ItemCode_2,
	x_1.Name_2,
	x_1.ItemCode_1,
	x_1.Name_1,
	x_1.Size_2,
	x_1.ItemCode_3,
	x_1.Name_3
FROM
	(
		SELECT
			x.Top as Size_1,
			x.Color_1 as Color,
			x.ItemCode,
			x.Color as Name,
			x.ItemCode_1,
			x.Style_1 as Name_1,
			CAST(NULL AS VARCHAR) as ItemCode_2,
			CAST(NULL AS VARCHAR) as Name_2,
			CAST(NULL AS BOOLEAN) as Size_2,
			CAST(NULL AS VARCHAR) as ItemCode_3,
			CAST(NULL AS VARCHAR) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as Top,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t."Style" as Style_1,
					t.Kind = 1 as Color_1
				FROM
					"Item" t
			) x
		WHERE
			x.Top
		UNION ALL
		SELECT
			t1.Bottom as Size_1,
			CAST(NULL AS BOOLEAN) as Color,
			CAST(NULL AS VARCHAR) as ItemCode,
			CAST(NULL AS VARCHAR) as Name,
			CAST(NULL AS VARCHAR) as ItemCode_1,
			CAST(NULL AS VARCHAR) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.Size_1 as Size_2,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as Bottom,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1."Style" as Style_1,
					t_1.Kind = 1 as Size_1
				FROM
					"Item" t_1
			) t1
		WHERE
			t1.Bottom
	) x_1
WHERE
	x_1.Size_1 AND x_1.Color IS NULL AND x_1.Size_2 OR
	NOT x_1.Size_1

-- DuckDB

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1."Style",
	t1.Color
FROM
	"Item" t1

