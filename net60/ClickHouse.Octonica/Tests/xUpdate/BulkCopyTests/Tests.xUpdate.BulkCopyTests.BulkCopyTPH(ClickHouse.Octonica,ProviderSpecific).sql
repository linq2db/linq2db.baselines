BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TPHTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
INSERT INTO TPHTable(Id, Discriminator, Value1, Value2, Value3, NullableBool) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Discriminator,
	t1.Value1,
	t1.Value2,
	t1.Value3,
	t1.NullableBool
FROM
	TPHTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3,
	x.NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3,
	x.NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = toInt32(2)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3,
	x.NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = toInt32(3)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3,
	x.NullableBool
FROM
	TPHTable x
WHERE
	x.Value1 = 'Str1'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3,
	x.NullableBool
FROM
	TPHTable x
WHERE
	x.Value2 = 'Str2'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3,
	x.NullableBool
FROM
	TPHTable x
WHERE
	x.Value3 = 'Str3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TPHTable

