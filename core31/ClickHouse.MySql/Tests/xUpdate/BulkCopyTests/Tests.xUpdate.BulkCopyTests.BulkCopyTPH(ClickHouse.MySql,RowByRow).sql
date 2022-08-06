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
	NullableBool  Nullable(String),
	Value3        Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TPHTable
(
	Id,
	Value1,
	Discriminator
)
VALUES
(
	toInt32(1),
	'Str1',
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TPHTable
(
	Id,
	Value2,
	Discriminator
)
VALUES
(
	toInt32(2),
	'Str2',
	toInt32(2)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TPHTable
(
	Id,
	NullableBool,
	Value3,
	Discriminator
)
VALUES
(
	toInt32(3),
	'Y',
	'Str3',
	toInt32(3)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Discriminator,
	t1.Value1,
	t1.Value2,
	t1.NullableBool,
	t1.Value3
FROM
	TPHTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.NullableBool,
	x.Value3
FROM
	TPHTable x
WHERE
	x.Discriminator = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.NullableBool,
	x.Value3
FROM
	TPHTable x
WHERE
	x.Discriminator = toInt32(2)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.NullableBool,
	x.Value3
FROM
	TPHTable x
WHERE
	x.Discriminator = toInt32(3)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.NullableBool,
	x.Value3
FROM
	TPHTable x
WHERE
	x.Value1 = 'Str1'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.NullableBool,
	x.Value3
FROM
	TPHTable x
WHERE
	x.Value2 = 'Str2'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.NullableBool,
	x.Value3
FROM
	TPHTable x
WHERE
	x.Value3 = 'Str3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TPHTable

