BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Item

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Item
(
	ItemId   Int32,
	Kind     Int32,
	ItemCode Nullable(String),
	Style    Nullable(String),
	Color    Nullable(String),

	PRIMARY KEY (ItemId)
)
ENGINE = MergeTree()
ORDER BY ItemId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(1,1,'01020102','Style1','White'),
(2,1,'01020102','Style1','White'),
(3,1,'01020102','Style1','White'),
(4,2,'03020302','Style3','White'),
(5,2,'01040104','Style1','Blue'),
(6,2,'01010104','Style1','Black'),
(7,3,'03020302','Style3','White'),
(8,3,'01040104','Style1','Blue'),
(9,3,'01010104','Style1','Black')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.cond,
	x.Kind,
	x.ItemCode,
	x.Color,
	x.ItemCode_1,
	x.Style_1
FROM
	(
		SELECT
			CASE
				WHEN i.Kind = 1 OR i.Kind = 2 THEN true
				ELSE false
			END as cond,
			CASE
				WHEN i.Kind = 1 THEN true
				ELSE false
			END as cond_1,
			Substring(i.ItemCode, 1, 2) as ItemCode,
			i.Color as Color,
			i.Kind as Kind,
			Substring(i.ItemCode, 3, 2) as ItemCode_1,
			i.Style as Style_1
		FROM
			Item i
		WHERE
			i.Kind = 1 OR i.Kind = 2
	) x
WHERE
	NOT (x.cond = true AND x.cond_1 = true)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
			CASE
				WHEN i.Kind = 1 OR i.Kind = 3 THEN true
				ELSE false
			END as cond,
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
	x.cond = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
			CASE
				WHEN t.Kind = 1 OR t.Kind = 2 THEN true
				ELSE false
			END as cond,
			Substring(t.ItemCode, 1, 2) as ItemCode,
			t.Color as Name,
			Substring(t.ItemCode, 3, 2) as ItemCode_1,
			t.Style as Name_1,
			CASE
				WHEN t.Kind = 1 THEN true
				ELSE false
			END as Color
		FROM
			Item t
	) t1
WHERE
	t1.cond = true
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
			CASE
				WHEN t_1.Kind = 1 OR t_1.Kind = 3 THEN true
				ELSE false
			END as cond,
			Substring(t_1.ItemCode, 5, 2) as ItemCode,
			t_1.Color as Color,
			Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
			t_1.Style as Style_1,
			CASE
				WHEN t_1.Kind = 1 THEN true
				ELSE false
			END as cond_1
		FROM
			Item t_1
	) t2
WHERE
	t2.cond = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x_2.Color,
	x_2.Color_1,
	x_2.ItemCode,
	x_2.Name,
	x_2.ItemCode_1,
	x_2.Name_1,
	x_2.ItemCode_2,
	x_2.Name_2,
	x_2.Size_1,
	x_2.ItemCode_3,
	x_2.Name_3
FROM
	(
		SELECT
			x_1.cond as Color,
			CASE
				WHEN x_1.Color IS NOT NULL THEN true
				ELSE false
			END as cond,
			x_1.Color as Color_1,
			x_1.ItemCode as ItemCode,
			x_1.Name as Name,
			x_1.c1 as ItemCode_1,
			x_1.c2 as Name_1,
			x_1.ItemCode_1 as ItemCode_2,
			x_1.Name_1 as Name_2,
			x_1.c3 as Size_1,
			x_1.c4 as ItemCode_3,
			x_1.c5 as Name_3
		FROM
			(
				SELECT
					x.cond as cond,
					x.cond_1 as Color,
					x.ItemCode as ItemCode,
					x.Color as Name,
					x.ItemCode_1 as ItemCode_1,
					x.Style_1 as Name_1,
					toString(NULL) as c1,
					toString(NULL) as c2,
					toBool(NULL) as c3,
					toString(NULL) as c4,
					toString(NULL) as c5
				FROM
					(
						SELECT
							CASE
								WHEN t.Kind = 1 OR t.Kind = 2 THEN true
								ELSE false
							END as cond,
							Substring(t.ItemCode, 1, 2) as ItemCode,
							t.Color as Color,
							Substring(t.ItemCode, 3, 2) as ItemCode_1,
							t.Style as Style_1,
							CASE
								WHEN t.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t
					) x
				WHERE
					x.cond = true
				UNION ALL
				SELECT
					t1.cond as cond,
					toBool(NULL) as Color,
					toString(NULL) as ItemCode,
					toString(NULL) as Name,
					toString(NULL) as ItemCode_1,
					toString(NULL) as Name_1,
					t1.ItemCode as c1,
					t1.Color as c2,
					t1.cond_1 as c3,
					t1.ItemCode_1 as c4,
					t1.Style_1 as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1.Kind = 1 OR t_1.Kind = 3 THEN true
								ELSE false
							END as cond,
							Substring(t_1.ItemCode, 5, 2) as ItemCode,
							t_1.Color as Color,
							Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
							t_1.Style as Style_1,
							CASE
								WHEN t_1.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t_1
					) t1
				WHERE
					t1.cond = true
			) x_1
	) x_2
WHERE
	NOT (x_2.Color = true AND x_2.cond = true) OR NOT (x_2.Color = true AND x_2.cond = true AND x_2.Color_1 = true AND x_2.Color_1 IS NOT NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x_2.Color,
	x_2.Color_1,
	x_2.ItemCode,
	x_2.Name,
	x_2.ItemCode_1,
	x_2.Name_1,
	x_2.ItemCode_2,
	x_2.Name_2,
	x_2.Size_1,
	x_2.ItemCode_3,
	x_2.Name_3
FROM
	(
		SELECT
			x_1.cond as Color,
			CASE
				WHEN x_1.Color IS NOT NULL THEN true
				ELSE false
			END as cond,
			x_1.Color as Color_1,
			x_1.ItemCode as ItemCode,
			x_1.Name as Name,
			x_1.c1 as ItemCode_1,
			x_1.c2 as Name_1,
			x_1.ItemCode_1 as ItemCode_2,
			x_1.Name_1 as Name_2,
			x_1.c3 as Size_1,
			x_1.c4 as ItemCode_3,
			x_1.c5 as Name_3
		FROM
			(
				SELECT
					x.cond as cond,
					x.cond_1 as Color,
					x.ItemCode as ItemCode,
					x.Color as Name,
					x.ItemCode_1 as ItemCode_1,
					x.Style_1 as Name_1,
					toString(NULL) as c1,
					toString(NULL) as c2,
					toBool(NULL) as c3,
					toString(NULL) as c4,
					toString(NULL) as c5
				FROM
					(
						SELECT
							CASE
								WHEN t.Kind = 1 OR t.Kind = 2 THEN true
								ELSE false
							END as cond,
							Substring(t.ItemCode, 1, 2) as ItemCode,
							t.Color as Color,
							Substring(t.ItemCode, 3, 2) as ItemCode_1,
							t.Style as Style_1,
							CASE
								WHEN t.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t
					) x
				WHERE
					x.cond = true
				UNION ALL
				SELECT
					t1.cond as cond,
					toBool(NULL) as Color,
					toString(NULL) as ItemCode,
					toString(NULL) as Name,
					toString(NULL) as ItemCode_1,
					toString(NULL) as Name_1,
					t1.ItemCode as c1,
					t1.Color as c2,
					t1.cond_1 as c3,
					t1.ItemCode_1 as c4,
					t1.Style_1 as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1.Kind = 1 OR t_1.Kind = 3 THEN true
								ELSE false
							END as cond,
							Substring(t_1.ItemCode, 5, 2) as ItemCode,
							t_1.Color as Color,
							Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
							t_1.Style as Style_1,
							CASE
								WHEN t_1.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t_1
					) t1
				WHERE
					t1.cond = true
			) x_1
	) x_2
WHERE
	x_2.Color = true AND
	x_2.cond = true AND
	x_2.Color = true AND
	x_2.cond = true AND
	x_2.Color_1 = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x_2.Size_1,
	x_2.Color,
	x_2.ItemCode_2,
	x_2.Name_2,
	x_2.ItemCode_3,
	x_2.Name_3,
	x_2.ItemCode,
	x_2.Name,
	x_2.Size_2,
	x_2.ItemCode_1,
	x_2.Name_1
FROM
	(
		SELECT
			x_1.cond as Size_1,
			CASE
				WHEN x_1.Color IS NOT NULL THEN true
				ELSE false
			END as cond,
			x_1.ItemCode_1 as ItemCode,
			x_1.Name_1 as Name,
			x_1.c3 as Size_2,
			x_1.c4 as ItemCode_1,
			x_1.c5 as Name_1,
			x_1.Color as Color,
			x_1.ItemCode as ItemCode_2,
			x_1.Name as Name_2,
			x_1.c1 as ItemCode_3,
			x_1.c2 as Name_3
		FROM
			(
				SELECT
					x.cond as cond,
					x.cond_1 as Color,
					x.ItemCode as ItemCode,
					x.Color as Name,
					x.ItemCode_1 as ItemCode_1,
					x.Style_1 as Name_1,
					toString(NULL) as c1,
					toString(NULL) as c2,
					toBool(NULL) as c3,
					toString(NULL) as c4,
					toString(NULL) as c5
				FROM
					(
						SELECT
							CASE
								WHEN t.Kind = 1 OR t.Kind = 2 THEN true
								ELSE false
							END as cond,
							Substring(t.ItemCode, 1, 2) as ItemCode,
							t.Color as Color,
							Substring(t.ItemCode, 3, 2) as ItemCode_1,
							t.Style as Style_1,
							CASE
								WHEN t.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t
					) x
				WHERE
					x.cond = true
				UNION ALL
				SELECT
					t1.cond as cond,
					toBool(NULL) as Color,
					toString(NULL) as ItemCode,
					toString(NULL) as Name,
					toString(NULL) as ItemCode_1,
					toString(NULL) as Name_1,
					t1.ItemCode as c1,
					t1.Color as c2,
					t1.cond_1 as c3,
					t1.ItemCode_1 as c4,
					t1.Style_1 as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1.Kind = 1 OR t_1.Kind = 3 THEN true
								ELSE false
							END as cond,
							Substring(t_1.ItemCode, 5, 2) as ItemCode,
							t_1.Color as Color,
							Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
							t_1.Style as Style_1,
							CASE
								WHEN t_1.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t_1
					) t1
				WHERE
					t1.cond = true
			) x_1
	) x_2
WHERE
	NOT (x_2.Size_1 = true AND x_2.cond = false) OR NOT (x_2.Size_1 = true AND x_2.cond = false AND x_2.Size_2 = true AND x_2.Size_2 IS NOT NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x_2.Size_1,
	x_2.Color,
	x_2.ItemCode_2,
	x_2.Name_2,
	x_2.ItemCode_3,
	x_2.Name_3,
	x_2.ItemCode,
	x_2.Name,
	x_2.Size_2,
	x_2.ItemCode_1,
	x_2.Name_1
FROM
	(
		SELECT
			x_1.cond as Size_1,
			CASE
				WHEN x_1.Color IS NOT NULL THEN true
				ELSE false
			END as cond,
			x_1.ItemCode_1 as ItemCode,
			x_1.Name_1 as Name,
			x_1.c3 as Size_2,
			x_1.c4 as ItemCode_1,
			x_1.c5 as Name_1,
			x_1.Color as Color,
			x_1.ItemCode as ItemCode_2,
			x_1.Name as Name_2,
			x_1.c1 as ItemCode_3,
			x_1.c2 as Name_3
		FROM
			(
				SELECT
					x.cond as cond,
					x.cond_1 as Color,
					x.ItemCode as ItemCode,
					x.Color as Name,
					x.ItemCode_1 as ItemCode_1,
					x.Style_1 as Name_1,
					toString(NULL) as c1,
					toString(NULL) as c2,
					toBool(NULL) as c3,
					toString(NULL) as c4,
					toString(NULL) as c5
				FROM
					(
						SELECT
							CASE
								WHEN t.Kind = 1 OR t.Kind = 2 THEN true
								ELSE false
							END as cond,
							Substring(t.ItemCode, 1, 2) as ItemCode,
							t.Color as Color,
							Substring(t.ItemCode, 3, 2) as ItemCode_1,
							t.Style as Style_1,
							CASE
								WHEN t.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t
					) x
				WHERE
					x.cond = true
				UNION ALL
				SELECT
					t1.cond as cond,
					toBool(NULL) as Color,
					toString(NULL) as ItemCode,
					toString(NULL) as Name,
					toString(NULL) as ItemCode_1,
					toString(NULL) as Name_1,
					t1.ItemCode as c1,
					t1.Color as c2,
					t1.cond_1 as c3,
					t1.ItemCode_1 as c4,
					t1.Style_1 as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1.Kind = 1 OR t_1.Kind = 3 THEN true
								ELSE false
							END as cond,
							Substring(t_1.ItemCode, 5, 2) as ItemCode,
							t_1.Color as Color,
							Substring(t_1.ItemCode, 7, 2) as ItemCode_1,
							t_1.Style as Style_1,
							CASE
								WHEN t_1.Kind = 1 THEN true
								ELSE false
							END as cond_1
						FROM
							Item t_1
					) t1
				WHERE
					t1.cond = true
			) x_1
	) x_2
WHERE
	x_2.Size_1 = true AND
	x_2.cond = false AND
	x_2.Size_1 = true AND
	x_2.cond = false AND
	x_2.Size_2 = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ItemId,
	t1.Kind,
	t1.ItemCode,
	t1.Style,
	t1.Color
FROM
	Item t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Item

