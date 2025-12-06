INSERT INTO TPHTableDefault(Id, Discriminator, Value1, Value2, Value3) VALUES

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

