-- ClickHouse.Driver ClickHouse

INSERT INTO TPHTableDefault
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

-- ClickHouse.Driver ClickHouse

INSERT INTO TPHTableDefault
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

-- ClickHouse.Driver ClickHouse

INSERT INTO TPHTableDefault
(
	Id,
	Discriminator,
	Value3
)
VALUES
(
	3,
	3,
	'Str3'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Discriminator,
	t1.Id,
	t1.Value3,
	t1.Value2,
	t1.Value1
FROM
	TPHTableDefault t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.Value2,
	x.Value1
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.Value2,
	x.Value1
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = 2
LIMIT 2

-- ClickHouse.Driver ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.Value2,
	x.Value1
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = 3
LIMIT 2

-- ClickHouse.Driver ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.Value2,
	x.Value1
FROM
	TPHTableDefault x
WHERE
	x.Value1 = 'Str1'
LIMIT 2

-- ClickHouse.Driver ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.Value2,
	x.Value1
FROM
	TPHTableDefault x
WHERE
	x.Value2 = 'Str2'
LIMIT 2

-- ClickHouse.Driver ClickHouse

SELECT
	x.Discriminator,
	x.Id,
	x.Value3,
	x.Value2,
	x.Value1
FROM
	TPHTableDefault x
WHERE
	x.Value3 = 'Str3'
LIMIT 2

