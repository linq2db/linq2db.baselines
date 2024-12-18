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
	Value1,
	Value2,
	Value3,
	NullableBool
)
VALUES
(1,1,'Str1',NULL,NULL,NULL),
(2,2,NULL,'Str2',NULL,NULL),
(3,3,NULL,NULL,'Str3','Y')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Discriminator,
	t1.Id,
	t1.Value3,
	t1.NullableBool,
	t1.Value2,
	t1.Value1
FROM
	TPHTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Discriminator = 1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Discriminator = 2
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Discriminator = 3
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Value1 = 'Str1' AND x.Value1 IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Value2 = 'Str2' AND x.Value2 IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Value3 = 'Str3' AND x.Value3 IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TPHTable

