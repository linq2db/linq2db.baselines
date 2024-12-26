BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Item

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	1,
	1,
	'01020102',
	'Style1',
	'White'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	2,
	1,
	'01020102',
	'Style1',
	'White'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	3,
	1,
	'01020102',
	'Style1',
	'White'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	4,
	2,
	'03020302',
	'Style3',
	'White'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	5,
	2,
	'01040104',
	'Style1',
	'Blue'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	6,
	2,
	'01010104',
	'Style1',
	'Black'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	7,
	3,
	'03020302',
	'Style3',
	'White'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	8,
	3,
	'01040104',
	'Style1',
	'Blue'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Item
(
	ItemId,
	Kind,
	ItemCode,
	Style,
	Color
)
VALUES
(
	9,
	3,
	'01010104',
	'Style1',
	'Black'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Kind = 1 OR t.Kind = 2,
	t.Kind,
	Substring(t.ItemCode, 1, 2),
	t.Color,
	Substring(t.ItemCode, 3, 2),
	t.Style,
	t.Kind = 1 OR t.Kind = 3,
	Substring(t.ItemCode, 5, 2),
	Substring(t.ItemCode, 7, 2)
FROM
	Item t

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
	x_1.cond_1,
	x_1.Kind,
	x_1.ItemCode,
	x_1.Color,
	x_1.ItemCode_2,
	x_1.Style_1,
	x_1.cond_3,
	x_1.ItemCode_1,
	x_1.ItemCode_3
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as cond,
			x.Kind = 1 OR x.Kind = 2 as cond_1,
			x.Kind = 1 as cond_2,
			Substring(x.ItemCode, 1, 2) as ItemCode,
			x.Color as Color,
			x.Kind = 1 OR x.Kind = 3 as cond_3,
			Substring(x.ItemCode, 5, 2) as ItemCode_1,
			x.Kind as Kind,
			Substring(x.ItemCode, 3, 2) as ItemCode_2,
			x.Style as Style_1,
			Substring(x.ItemCode, 7, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	NOT (x_1.cond AND (x_1.cond_1 AND x_1.cond_2 OR NOT x_1.cond_1) OR NOT x_1.cond AND NOT x_1.cond_3)

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
	x_1.cond_1,
	x_1.Kind,
	x_1.ItemCode,
	x_1.Color,
	x_1.ItemCode_2,
	x_1.Style_1,
	x_1.cond_3,
	x_1.ItemCode_1,
	x_1.ItemCode_3
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as cond,
			x.Kind = 1 OR x.Kind = 2 as cond_1,
			x.Kind = 1 as cond_2,
			Substring(x.ItemCode, 1, 2) as ItemCode,
			x.Color as Color,
			x.Kind = 1 OR x.Kind = 3 as cond_3,
			Substring(x.ItemCode, 5, 2) as ItemCode_1,
			x.Kind as Kind,
			Substring(x.ItemCode, 3, 2) as ItemCode_2,
			x.Style as Style_1,
			Substring(x.ItemCode, 7, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	x_1.cond AND (x_1.cond_1 AND x_1.cond_2 OR NOT x_1.cond_1) OR
	NOT x_1.cond AND NOT x_1.cond_3

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
	x_1.cond_1,
	x_1.Kind,
	x_1.ItemCode_2,
	x_1.Color,
	x_1.ItemCode,
	x_1.Style_1,
	x_1.cond_2,
	x_1.ItemCode_3,
	x_1.ItemCode_1
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as cond,
			x.Kind = 1 OR x.Kind = 2 as cond_1,
			Substring(x.ItemCode, 3, 2) as ItemCode,
			x.Style as Style_1,
			x.Kind = 1 OR x.Kind = 3 as cond_2,
			x.Kind = 1 as cond_3,
			Substring(x.ItemCode, 7, 2) as ItemCode_1,
			x.Kind as Kind,
			Substring(x.ItemCode, 1, 2) as ItemCode_2,
			x.Color as Color,
			Substring(x.ItemCode, 5, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	NOT (x_1.cond AND NOT x_1.cond_1 OR NOT x_1.cond AND (x_1.cond_2 AND x_1.cond_3 OR NOT x_1.cond_2))

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
	x_1.cond_1,
	x_1.Kind,
	x_1.ItemCode_2,
	x_1.Color,
	x_1.ItemCode,
	x_1.Style_1,
	x_1.cond_2,
	x_1.ItemCode_3,
	x_1.ItemCode_1
FROM
	(
		SELECT
			x.Kind = 1 OR x.Kind = 2 as cond,
			x.Kind = 1 OR x.Kind = 2 as cond_1,
			Substring(x.ItemCode, 3, 2) as ItemCode,
			x.Style as Style_1,
			x.Kind = 1 OR x.Kind = 3 as cond_2,
			x.Kind = 1 as cond_3,
			Substring(x.ItemCode, 7, 2) as ItemCode_1,
			x.Kind as Kind,
			Substring(x.ItemCode, 1, 2) as ItemCode_2,
			x.Color as Color,
			Substring(x.ItemCode, 5, 2) as ItemCode_3
		FROM
			Item x
	) x_1
WHERE
	x_1.cond AND NOT x_1.cond_1 OR NOT x_1.cond AND (x_1.cond_2 AND x_1.cond_3 OR NOT x_1.cond_2)

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

DROP TABLE IF EXISTS Item

