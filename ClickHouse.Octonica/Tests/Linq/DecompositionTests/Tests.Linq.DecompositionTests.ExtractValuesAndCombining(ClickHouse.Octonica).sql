BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Kind = 1 OR x.Kind = 2,
	x.Kind,
	Substring(x.ItemCode, 1, 2),
	x.Color,
	Substring(x.ItemCode, 3, 2),
	x.Style
FROM
	Item x
WHERE
	(x.Kind = 1 OR x.Kind = 2) AND x.Kind <> 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.cond,
	x.ItemCode,
	x.Color,
	x.Kind,
	x.ItemCode_1,
	x.Style_1
FROM
	(
		SELECT
			i.Kind = 1 OR i.Kind = 3 as cond,
			Substring(i.ItemCode, 5, 2) as ItemCode,
			i.Color as Color,
			i.Kind as Kind,
			Substring(i.ItemCode, 7, 2) as ItemCode_1,
			i.Style as Style_1
		FROM
			Item i
		WHERE
			i.Kind = 1 OR i.Kind = 3
	) x
WHERE
	x.cond

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.cond,
	t1.Color,
	t1.ItemCode,
	t1.Name,
	toString(NULL) as ItemCode_1,
	toString(NULL) as Name_1,
	t1.ItemCode_1 as ItemCode_2,
	t1.Name_1 as Name_2,
	toBool(NULL) as c1,
	toString(NULL) as ItemCode_3,
	toString(NULL) as Name_3
FROM
	(
		SELECT
			t.Kind = 1 OR t.Kind = 2 as cond,
			Substring(t.ItemCode, 1, 2) as ItemCode,
			t.Color as Name,
			Substring(t.ItemCode, 3, 2) as ItemCode_1,
			t.Style as Name_1,
			t.Kind = 1 as Color
		FROM
			Item t
	) t1
WHERE
	t1.cond
UNION ALL
SELECT
	t2.cond as cond,
	toBool(NULL) as Color,
	toString(NULL) as ItemCode,
	toString(NULL) as Name,
	t2.ItemCode as ItemCode_1,
	t2.Color as Name_1,
	toString(NULL) as ItemCode_2,
	toString(NULL) as Name_2,
	t2.cond_1 as c1,
	t2.ItemCode_1 as ItemCode_3,
	t2.Style_1 as Name_3
FROM
	(
		SELECT
			t_1.Kind = 1 OR t_1.Kind = 3 as cond,
			Substring(t_1.ItemCode, 5, 2) as ItemCode,
			t_1.Color as Color,
			Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
			t_1.Style as Style_1,
			t_1.Kind = 1 as cond_1
		FROM
			Item t_1
	) t2
WHERE
	t2.cond

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			x.cond as Color,
			x.cond_1 as Color_1,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			toString(NULL) as ItemCode_2,
			toString(NULL) as Name_2,
			toBool(NULL) as Size_1,
			toString(NULL) as ItemCode_3,
			toString(NULL) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as cond,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color as Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as cond_1
				FROM
					Item t
			) x
		WHERE
			x.cond
		UNION ALL
		SELECT
			t1.cond as Color,
			toBool(NULL) as Color_1,
			toString(NULL) as ItemCode,
			toString(NULL) as Name,
			toString(NULL) as ItemCode_1,
			toString(NULL) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.cond_1 as Size_1,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as cond,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color as Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as cond_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.cond
	) x_1
WHERE
	NOT (x_1.Color_1 IS NOT NULL AND x_1.Color_1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			x.cond as Color,
			x.cond_1 as Color_1,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			toString(NULL) as ItemCode_2,
			toString(NULL) as Name_2,
			toBool(NULL) as Size_1,
			toString(NULL) as ItemCode_3,
			toString(NULL) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as cond,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color as Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as cond_1
				FROM
					Item t
			) x
		WHERE
			x.cond
		UNION ALL
		SELECT
			t1.cond as Color,
			toBool(NULL) as Color_1,
			toString(NULL) as ItemCode,
			toString(NULL) as Name,
			toString(NULL) as ItemCode_1,
			toString(NULL) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.cond_1 as Size_1,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as cond,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color as Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as cond_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.cond
	) x_1
WHERE
	x_1.Color_1 IS NOT NULL AND x_1.Color_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			x.cond as Size_1,
			x.cond_1 as Color,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			toString(NULL) as ItemCode_2,
			toString(NULL) as Name_2,
			toBool(NULL) as Size_2,
			toString(NULL) as ItemCode_3,
			toString(NULL) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as cond,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color as Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as cond_1
				FROM
					Item t
			) x
		WHERE
			x.cond
		UNION ALL
		SELECT
			t1.cond as Size_1,
			toBool(NULL) as Color,
			toString(NULL) as ItemCode,
			toString(NULL) as Name,
			toString(NULL) as ItemCode_1,
			toString(NULL) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.cond_1 as Size_2,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as cond,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color as Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as cond_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.cond
	) x_1
WHERE
	NOT (x_1.Color IS NULL AND x_1.Size_2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			x.cond as Size_1,
			x.cond_1 as Color,
			x.ItemCode as ItemCode,
			x.Color as Name,
			x.ItemCode_1 as ItemCode_1,
			x.Style_1 as Name_1,
			toString(NULL) as ItemCode_2,
			toString(NULL) as Name_2,
			toBool(NULL) as Size_2,
			toString(NULL) as ItemCode_3,
			toString(NULL) as Name_3
		FROM
			(
				SELECT
					t.Kind = 1 OR t.Kind = 2 as cond,
					Substring(t.ItemCode, 1, 2) as ItemCode,
					t.Color as Color,
					Substring(t.ItemCode, 3, 2) as ItemCode_1,
					t.Style as Style_1,
					t.Kind = 1 as cond_1
				FROM
					Item t
			) x
		WHERE
			x.cond
		UNION ALL
		SELECT
			t1.cond as Size_1,
			toBool(NULL) as Color,
			toString(NULL) as ItemCode,
			toString(NULL) as Name,
			toString(NULL) as ItemCode_1,
			toString(NULL) as Name_1,
			t1.ItemCode as ItemCode_2,
			t1.Color as Name_2,
			t1.cond_1 as Size_2,
			t1.ItemCode_1 as ItemCode_3,
			t1.Style_1 as Name_3
		FROM
			(
				SELECT
					t_1.Kind = 1 OR t_1.Kind = 3 as cond,
					Substring(t_1.ItemCode, 5, 2) as ItemCode,
					t_1.Color as Color,
					Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
					t_1.Style as Style_1,
					t_1.Kind = 1 as cond_1
				FROM
					Item t_1
			) t1
		WHERE
			t1.cond
	) x_1
WHERE
	x_1.Color IS NULL AND x_1.Size_2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

