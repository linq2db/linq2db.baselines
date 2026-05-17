-- ClickHouse.Driver ClickHouse

INSERT INTO TypeConvertTable
(
	Id,
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	1,
	'NotVerified',
	'N',
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
)

-- ClickHouse.Driver ClickHouse

INSERT INTO TypeConvertTable
(
	Id,
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	2,
	'Verified',
	'Y',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'
LIMIT 1

