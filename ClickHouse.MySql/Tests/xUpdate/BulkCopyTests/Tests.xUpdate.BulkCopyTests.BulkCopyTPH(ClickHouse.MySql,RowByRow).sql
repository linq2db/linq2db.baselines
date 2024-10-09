BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TPHTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TPHTable
(
	Id            Int32,
	Discriminator Int32,
	Value1        Nullable(String),
	Value2        Nullable(String),
	Value3        Nullable(String),
	NullableBool  Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TPHTable
(
	Id,
	Discriminator,
	Value1
)
VALUES
(
	1,
	1,
	'Str1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TPHTable
(
	Id,
	Discriminator,
	Value2
)
VALUES
(
	2,
	2,
	'Str2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TPHTable
(
	Id,
	Discriminator,
	Value3,
	NullableBool
)
VALUES
(
	3,
	3,
	'Str3',
	'Y'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN t1.Discriminator = 3 THEN true
		ELSE false
	END,
	t1.Id,
	t1.Value3,
	t1.NullableBool,
	CASE
		WHEN t1.Discriminator = 2 THEN true
		ELSE false
	END,
	t1.Value2,
	CASE
		WHEN t1.Discriminator = 1 THEN true
		ELSE false
	END,
	t1.Value1,
	t1.Discriminator
FROM
	TPHTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Value3,
	x.NullableBool,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTable x
WHERE
	x.Discriminator = 1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Value3,
	x.NullableBool,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTable x
WHERE
	x.Discriminator = 2
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Value3,
	x.NullableBool,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTable x
WHERE
	x.Discriminator = 3
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Value3,
	x.NullableBool,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTable x
WHERE
	x.Value1 = 'Str1'
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Value3,
	x.NullableBool,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTable x
WHERE
	x.Value2 = 'Str2'
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Value3,
	x.NullableBool,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTable x
WHERE
	x.Value3 = 'Str3'
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TPHTable

