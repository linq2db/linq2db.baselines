BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
	x.Value1 = 'Str1'
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	x.Value2 = 'Str2'
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	x.Value3 = 'Str3'
LIMIT 2

